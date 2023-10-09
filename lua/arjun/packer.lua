local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
    use('justinmk/vim-sneak')
    use('dstein64/vim-startuptime')
    use('nvim-lua/plenary.nvim')
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
    use('dhananjaylatkar/cscope_maps.nvim')
    use('tpope/vim-fugitive')
    use('preservim/nerdtree')
    use { 'junegunn/fzf', run = ":call fzf#install()" }
    use ('junegunn/fzf.vim')
    use ('flazz/vim-colorschemes')

    use('hrsh7th/nvim-cmp')
    use('hrsh7th/cmp-buffer')
    use('hrsh7th/cmp-path')
    use('saadparwaiz1/cmp_luasnip')
    use('rafamadriz/friendly-snippets')
    use('folke/tokyonight.nvim')
    use('rebelot/kanagawa.nvim')
    use('rmehri01/onenord.nvim')
    use('AlexvZyl/nordic.nvim')
    use('tpope/vim-obsession')
    use('f-person/git-blame.nvim')
    use{'kevinhwang91/nvim-bqf', ft = 'qf' }
    use('nvim-treesitter/nvim-treesitter-context')
    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.2',
      requires = { {'nvim-lua/plenary.nvim'} }
    }
      if packer_bootstrap then
        require('packer').sync()
      end
end)
