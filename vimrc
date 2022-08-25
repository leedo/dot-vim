set nocompatible

set backspace=indent,eol,start
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set softtabstop=4
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

let g:go_fmt_command = "goimports"
let g:gitgutter_highlights=0
let g:rustfmt_autosave = 1

let g:lsc_server_commands = {'rust': 'rust-analyzer', 'go': 'gopls'}
let g:lsc_auto_map = v:true

let g:ale_go_govet_options = '-vettool=$(which shadow)'
let g:ale_linters = {'go': ['gopls'], 'rust': ['cargo', 'analyzer']} " disabled golang staticcheck because of false positives (e.g. it would show errors about references not being defined, when they exist in the same package but in a different file)
let g:ale_python_mypy_options = '--ignore-missing-imports --strict-equality'
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '▲'
highlight link ALEWarningSign String
highlight link ALEErrorSign Title
nmap <silent> <leader>x :ALENext<cr>
nmap <silent> <leader>z :ALEPrevious<cr>

hi SignColumn   guifg=#595959 guibg=#2b2b2b ctermfg=243 ctermbg=235
hi GitGutterAdd    guifg=#009900 guibg=#2b2b2b ctermfg=2   ctermbg=235
hi GitGutterChange guifg=#bbbb00 guibg=#2b2b2b ctermfg=3   ctermbg=235
hi GitGutterDelete  guifg=#ff2222 guibg=#2b2b2b ctermfg=1   ctermbg=235
hi GitGutterChangeDelete  guifg=#ff2222 guibg=#2b2b2b ctermfg=1   ctermbg=235

hi CursorLine cterm=NONE ctermbg=243 ctermfg=black
hi CtrlPMatch cterm=bold ctermbg=243 ctermfg=white
hi CtrlPMode1 guifg=Black guibg=#aabbee gui=bold ctermfg=Black ctermbg=153 cterm=bold
hi CtrlPMode2 guifg=Black guibg=#aabbee gui=bold ctermfg=Black ctermbg=153 cterm=bold
hi CtrlPStats guifg=Black guibg=#aabbee gui=bold ctermfg=Black ctermbg=153 cterm=bold

set statusline=\ %F%m%r%h%w\ \ 
set statusline+=%=%y\ \ 
set statusline+=%{fugitive#statusline()}\ \ 
set statusline+=%l,%c\ \ %P\ 

cnoremap <C-a> <C-b>

nmap ! :terminal<CR>
let g:rustfmt_autosave = 1
