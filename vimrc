if v:progname =~? "evim"
  finish
endif

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

if has("vms")
  set nobackup
else
  set backupdir=~/.backup/
  set backup
endif
map Q gq

if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
  set number
  colorscheme railscasts
endif

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

if !exists("autocommands_loaded")
	let autocommands_loaded = 1
	augroup C
		autocmd BufRead *.c set cindent
	augroup END
endif

au BufNewFile,BufRead *.psgi set filetype=perl

let b:tt2_syn_tags = '\[% %] <!-- -->'

map <F7> :new<CR>:read !svn diff<CR>:set syntax=diff buftype=nofile<CR>gg
map <F1> :NERDTreeToggle
let Tlist_File_Fold_Auto_Close=1
let Tlist_Enable_Fold_Column=0
let Tlist_Compact_Format=1
set bg=dark
set encoding=utf-8
set fileencoding=utf-8

map <C-k> :noh<CR>

set wildmode=longest,list,full
set wildmenu
