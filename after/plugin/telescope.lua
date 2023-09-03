local builtin = require('telescope.builtin')
local fzf = 

vim.keymap.set('n', '<leader>ff', function() builtin.find_files({layout_strategy='vertical',layout_config={width=0.8}}) end)
vim.keymap.set('n', '<leader>fw', function() builtin.live_grep({layout_strategy='vertical',layout_config={width=0.8}}) end)
vim.keymap.set('n', '<leader>F', function() vim.api.nvim_command(':Files') end)
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function() builtin.grep_string({search = vim.fn.input("Grep > ") }) end)

local telescope_ag = require('telescope-ag')
telescope_ag.setup({cmd = telescope_ag.cmds.rg})

vim.keymap.set('n', '<leader>fa', function() builtin.grep_string({search = vim.fn.input("Grep > ") }) end)

