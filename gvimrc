color railscasts
set guioptions=cMe
set guifont=Deja\ Vu\ Sans\ Mono\ 14
syntax on
set number

autocmd VimEnter * NERDTree

map <M-]> :tabnext<CR>
map! <M-]> :tabnext<CR>

map <M-[> :tabprevious<CR>
map! <M-[> :tabprevious<CR>

map <C-Tab> :tabnext<CR>
map! <C-Tab> :tabnext<CR>

map <C-t> :tabnew<CR>:NERDTree<CR><C-w>l<CR>
map! <C-t> :tabnew<CR>:NERDTree<CR><C-w>l<CR>
