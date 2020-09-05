if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'flazz/vim-colorschemes'
Plug 'Valloric/YouCompleteMe'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'tpope/vim-fugitive'
call plug#end()

colorscheme tir_black

set incsearch
set showmatch
set hlsearch

set wildignore=*.o,*.obj,*.bak,*.exe

syntax on

set encoding=utf-8
set expandtab
set tabstop=2
set sw=2
set bs=indent,eol,start
autocmd FileType text setlocal expandtab
let g:indent_guides_enable_on_vim_startup = 1

set showcmd
set ruler
set spell
set breakindent
set linebreak
set wrap

set wildmenu
" set wildmode=true
