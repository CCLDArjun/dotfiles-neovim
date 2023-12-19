local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

plugins = {
	{ "justinmk/vim-sneak" },
	{ "dstein64/vim-startuptime" },
	{ "nvim-lua/plenary.nvim" },
	{ "nvim-treesitter/nvim-treesitter" },
	{ "theprimeagen/harpoon" },
	{ "ellisonleao/gruvbox.nvim" },
	{ "mbbill/undotree" },
	{ "catppuccin/nvim" },
	{ "preservim/tagbar" },
	{ "kadekillary/skull-vim" },
	{ "andreypopp/vim-colors-plain" },
	{ "owickstrom/vim-colors-paramount" },
	{ "fxn/vim-monochrome" },
	{ "Mofiqul/vscode.nvim" },
	{ "dhananjaylatkar/cscope_maps.nvim" },
	{ "tpope/vim-fugitive" },
	{ "preservim/nerdtree" },
	{ 'junegunn/fzf' },
	{ "junegunn/fzf.vim" },
	{ "flazz/vim-colorschemes" },
	{ "hrsh7th/nvim-cmp" },
	{ "hrsh7th/cmp-buffer" },
	{ "hrsh7th/cmp-path" },
	{ "saadparwaiz1/cmp_luasnip" },
	{ "rafamadriz/friendly-snippets" },
	{ "romainl/vim-cool" },
	{ "folke/tokyonight.nvim" },
	{ "rebelot/kanagawa.nvim" },
	{ "rmehri01/onenord.nvim" },
	{ "AlexvZyl/nordic.nvim" },
	{ "tpope/vim-obsession" },
	{ "f-person/git-blame.nvim" },
	{ "kevinhwang91/nvim-bqf" },
	{ "nvim-treesitter/nvim-treesitter-context" },
	{ "github/copilot.vim", enabled = copilot},
	{ "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } },
}


vim.g.mapleader = " "
require("lazy").setup(plugins)

