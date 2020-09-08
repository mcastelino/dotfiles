if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
" Initialize plugin system
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'flazz/vim-colorschemes'
Plug 'Valloric/YouCompleteMe'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/vim-easy-align'
" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'majutsushi/tagbar'
Plug 'kris2k/cscope.vim'
Plug 'itspriddle/vim-shellcheck'
Plug 'airblade/vim-gitgutter'
call plug#end()

" colorscheme solarized8_dark_high
colorscheme desert256
set background=dark
" let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4

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

set showcmd
set showmode
set ruler
set spell
set breakindent
set linebreak
set wrap

set wildmenu
" set wildmode=true

"only when editing dos files on linux
"set ffs=dos,unix

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" For git gutter
set updatetime=100

set et
nmap <F2> :set invpaste paste?<CR>
nmap <F3> :NERDTreeToggle<CR>
nmap <F4> :IndentGuidesToggle<CR>
nmap <F5> :TagbarToggle<CR>
" autocmd vimenter * NERDTree
" autocmd vimEnter * wincmd p
autocmd vimEnter * TagbarToggle

