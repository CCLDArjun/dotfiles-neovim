vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.undodir = os.getenv("HOME") .. "/.nvim/undodir/"
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

-- Function to set scrolloff based on window height
local scrolloff_divider = 5
local max_scrolloff = 6
vim.api.nvim_create_autocmd({"WinEnter", "WinResized", "BufWinEnter", }, {
    callback = function()
        local win_height = vim.api.nvim_win_get_height(0)
        if win_height < 20 then
            vim.opt.scrolloff = 2
        else
            vim.opt.scrolloff = math.min(
                math.floor(win_height / scrolloff_divider),
                max_scrolloff
            )
        end
    end,
})

vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50
vim.opt.colorcolumn = "80"

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.clipboard = unnamedplus

vim.opt.pumheight = 3 -- only want 3 completion items

function file_exists(name)
   local f=io.open(name,"r")
   if f~=nil then io.close(f) return true else return false end
end

local ctags_path = "/opt/homebrew/bin/ctags"
if file_exists(ctags_path) then
    vim.g.tagbar_ctags_bin = ctags_path
end

require('gitblame').setup {
    enabled = false,
}
