if has("nvim")
    let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

Plug 'tpope/vim-fugitive'

if has("nvim")
    Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
endif

call plug#end()
