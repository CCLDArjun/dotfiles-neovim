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
	-- Packer can manage itself
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
      if packer_bootstrap then
        require('packer').sync()
      end
end)
