set nocompatible

set backspace=indent,eol,start
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set softtabstop=2
set history=50
set ruler
set showcmd	
set incsearch
set ruler
set laststatus=2
set showmatch

set hlsearch
set number

syntax on
colorscheme railscasts

set backupdir=~/.vim/backup/
set backup

call pathogen#runtime_append_all_bundles()

if has("autocmd")
  filetype off
  filetype plugin indent on
  augroup vimrcEx
  au!
  autocmd FileType text setlocal textwidth=78
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif
  augroup END
else
    set autoindent
endif


let perl_no_subprototype_error=1

set bg=dark
set encoding=utf-8
set fileencoding=utf-8
set wildmode=longest,list,full
set wildmenu

let g:gitgutter_highlights=0
hi SignColumn   guifg=#595959 guibg=#2b2b2b ctermfg=243 ctermbg=235
hi GitGutterAdd    guifg=#009900 guibg=#2b2b2b ctermfg=2   ctermbg=235
hi GitGutterChange guifg=#bbbb00 guibg=#2b2b2b ctermfg=3   ctermbg=235
hi GitGutterDelete  guifg=#ff2222 guibg=#2b2b2b ctermfg=1   ctermbg=235
hi GitGutterChnageDelete  guifg=#ff2222 guibg=#2b2b2b ctermfg=1   ctermbg=235

set statusline=\ %F%m%r%h%w\ \ 
set statusline+=%=%y\ \ 
set statusline+=%{fugitive#statusline()}\ \ 
set statusline+=%l,%c\ \ %P\ 

cnoremap <C-a> <C-b>

nmap ! :ConqueTermSplit bash -l<CR>
