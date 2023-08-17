-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use('theprimeagen/harpoon')
    use('ellisonleao/gruvbox.nvim')
    use('mbbill/undotree')
    use { "catppuccin/nvim", as = "catppuccin" }
    use('preservim/tagbar')
    use('kadekillary/skull-vim')
    use('andreypopp/vim-colors-plain')
    use('owickstrom/vim-colors-paramount')
    use('fxn/vim-monochrome')
    use('Mofiqul/vscode.nvim')
end)
