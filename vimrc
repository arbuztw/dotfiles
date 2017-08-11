call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'bronson/vim-trailing-whitespace'
Plug 'scrooloose/nerdcommenter'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
call plug#end()

filetype indent plugin on

syntax on
set autoread
set autoindent
set showmatch
set number
set ruler
set hlsearch
set incsearch
set showcmd
set history=10000
set nowrap
set expandtab
set backspace=indent,eol,start
set shiftwidth=4
set tabstop=4
set softtabstop=4
set laststatus=2

colorscheme torte

" Set map leader to " "
let mapleader = " "
let maplocalleader = " "
let g:mapleader = " "
let g:maplocalleader = " "
runtime .vimrc_leader

" auto reload vimrc
autocmd! bufwritepost .vimrc source %

autocmd FileType Makefile setlocal noexpandtab
autocmd FileType cpp se makeprg=g++\ -g\ -Wall\ -Wshadow\ -O2\ -std=c++14\ -o\ %<\ %
autocmd FileType c se makeprg=gcc\ -g\ -Wall\ -Wshadow\ -O2\ -std=c11\ -o\ %<\ %
autocmd FileType tex setlocal shiftwidth=2 tabstop=2

nnoremap <leader>t :tabe<Space>
nmap <Tab> :tabnext<CR>
nmap <S-Tab> :tabprev<CR>

" NERD Commenter plugin
let g:NERDCreateDefaultMappings = 0
let g:NERDSpaceDelims = 1
map <leader>cc <plug>NERDCommenterComment
map <leader>cu <plug>NERDCommenterUncomment
map <leader>c<space> <plug>NERDCommenterToggle

" YCM plugin
let g:ycm_confirm_extra_conf = 0
set completeopt-=preview
let g:ycm_key_list_select_completion = ['<TAB>']
let g:ycm_key_list_previous_completion = ['<S-TAB>']
