" Mapping "{{{
" ---------------------------------------------------------------------

" Disabled arrow key on normal and insert mode.
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Turn off linewise keys. Normally, the `j' and `k' keys move the cursor down one entire line.
" With line wrapping on, this can cause the cursor to actually skip a few lines on the screen
" because it's moving from line N to line N+1 in the file.
" I want this to act more visually -- I want `down' to mean the next line on the screen.
nmap j gj
nmap k gk

" Efficient command shortcut, e.g: ;w to save instead :w.
nnoremap ; :

" Window navigation with Ctrl + navigation. Instead Ctrl + w then h/j/k/l. Use Ctrl + h/j/k/l.
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>lp

" Stack normal/visual/select Ctrl-L to clear search highlight.
nnoremap <silent> <C-L> :<C-U>nohlsearch<CR><C-L>
vnoremap <silent> <C-L> :<C-U>nohlsearch<CR>gv<C-L>

" \ev Quick open vimrc file.
nmap <silent> <Leader>ev :e $MYVIMRC<CR>

" \sv Quick reload vimrc file.
nmap <silent> <Leader>sv :so $MYVIMRC<CR>

" Apply sudo (when forgot) editing privilege file with :w!!.
cmap w!! w !sudo tee % >/dev/null
