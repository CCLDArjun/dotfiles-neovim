function header_lines()
    local f = vim.fn.stdpath("config") .. "/bin/greeter_header"
    ret = ""
    for line in io.lines(f) do
        ret = ret .. line .. "\n"
    end
    return ret
end

local starter = require('mini.starter')
starter.setup({
    header = header_lines(),
    footer = "",
    -- Add a custom content hook to modify the key mappings
    content_hooks = {
        starter.gen_hook.adding_bullet(),
        starter.gen_hook.aligning('center', 'center'),
        function(content)
            local buf_id = vim.api.nvim_get_current_buf()
            local map = function(lhs, rhs)
                vim.keymap.set('n', lhs, rhs, { buffer = buf_id, nowait = true, silent = true })
            end

            -- Add custom keymaps
            map('h', function() starter.update_current_item('prev') end)
            map('l', function() starter.update_current_item('next') end)
            map('j', function() starter.update_current_item('next') end)
            map('k', function() starter.update_current_item('prev') end)

            -- Optionally, remove default keymaps
            vim.keymap.del('n', '<Up>', { buffer = buf_id })
            vim.keymap.del('n', '<Down>', { buffer = buf_id })

            return content
        end,
    },
})
