execute pathogen#infect()
syntax on
filetype plugin indent on
setlocal cinoptions=:0
setlocal spell spelllang=en_us
set nu

"Theme
set background=dark
colorscheme solarized

"Nerdtree
set encoding=utf-8
autocmd vimenter * NERDTree
let g:NERDTreeDirArrows=0

"Tagbar to see current file tags
nmap <F8> :TagbarToggle<CR>

"Hit F5 before pasting to prevent the auto indent"
set pastetoggle=<F5>

"Gundo
nnoremap <F5> :GundoToggle<CR>


"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_c_no_include_search = 1
let g:syntastic_c_remove_include_errors = 1
let g:syntastic_enable_signs = 1
let g:syntastic_c_no_include_search = 0

let g:syntastic_auto_jump = 1
let g:syntastic_enable_balloons = 1

"Use the right checker here
let g:syntastic_c_checkers = ['make']

"YCM
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'"
let g:ycm_register_as_syntastic_checker = 1 "default 1
let g:Show_diagnostics_ui = 1 "default 1

"will put icons in Vim's gutter on lines that have a diagnostic set.
"Turning this off will also turn off the YcmErrorLine and YcmWarningLine
"highlighting
let g:ycm_enable_diagnostic_signs = 1
let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_always_populate_location_list = 1 "default 0
let g:ycm_open_loclist_on_ycm_diags = 1 "default 1

let g:ycm_complete_in_strings = 1 "default 1
let g:ycm_collect_identifiers_from_tags_files = 0 "default 0
let g:ycm_path_to_python_interpreter = '' "default ''

let g:ycm_server_use_vim_stdout = 0 "default 0 (logging to console)
let g:ycm_server_log_level = 'info' "default info

let g:ycm_confirm_extra_conf = 0

"nerdtree git plugin
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }
    
"Always try to enable
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
