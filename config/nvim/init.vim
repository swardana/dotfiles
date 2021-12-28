" Fundamentals "{{{
" ----------------------------------------------------------------------
set expandtab          " Use spaces instead of tabs.
set shiftwidth=2       " Indent with two spaces.
set softtabstop=2      " Insert four spaces with tab key.

set lazyredraw         " Don't redraw the screen during batch execution.
set relativenumber     " Display relative line numbers.
set linebreak          " Break lines at word boundaries.
set showbreak=...      " Prefix wrapped rows with three dots.

" Use 80 text width column.
set textwidth=80
set colorcolumn=80

" New window positioning.
set splitbelow         " Below the current window, not above.
set splitright         " Right of the current window, not left.

" Turn off backup, most stuff on source control.
set nobackup
set noswapfile

"}}}

" File types "{{{
" ---------------------------------------------------------------------
" Markdown
au BufNewFile,BufRead *.md set filetype=markdown
au BufNewFile,BufRead *.mdx set filetype=markdown

" Fish
au BufNewFile,BufRead *.fish set filetype=fish

autocmd FileType yaml setlocal shiftwidth=2 tabstop=2

"}}}

" Syntax theme "{{{
" ----------------------------------------------------------------------

" true color
if has("termguicolors")
    set termguicolors
endif

"}}}


" Imports "{{{
" ----------------------------------------------------------------------
runtime ./plug.vim
runtime ./maps.vim
if has("unix")
    let s:uname = system("uname -s")
    " Do Mac stuff
    if s:uname == "Darwin\n"
        runtime ./macos.vim
    endif
endif

"}}}
