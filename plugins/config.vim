"
" WebVim Configuration : Plugins configuration
"
" author: Bertrand Chevrier <chevrier.bertrand@gmail.com>
" source: https://github.com/krampstudio/dotvim
" year  : 2015
"

" TODO split by plugin ?


" [> NERDTree <]

" on vim enter opens nerd tree
function! OpenNerdTree()
    let s:exclude = ['COMMIT_EDITMSG', 'MERGE_MSG']
    if index(s:exclude, expand('%:t')) < 0
        NERDTreeFind
        exec "normal! \<c-w>\<c-w>"
    endif
endfunction
"autocmd VimEnter * call OpenNerdTree()

" nerdtree autoclose if it is the last opened buffer
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" nerdtree window resize
let g:NERDTreeWinSize = 35

" show hidden files
let g:NERDTreeShowHidden=1

" single click to open nodes
" let g:NERDTreeMouseMode=3

" ignored files
let g:NERDTreeIgnore=['\.swp$', '\~$', '\.pyc$']
nnoremap <c-n> :NERDTreeToggle<cr>


" [> NERDCommenter <]

noremap <c-_> :call NERDComment(0, "Toggle")<cr>


" [> Airline <]

" status line always opened
set laststatus=2

let g:airline#extensions#tabline#enabled = 1

"  powerline font
let g:airline_powerline_fonts = 1

" show the buffer numbers
let g:airline#extensions#tabline#buffer_nr_show = 1


" [> EditorConfig <]

" to avoid issues with fugitive
let g:EditorConfig_exclude_patterns = ['fugitive://.*']


" [> PyMode <]
let g:pymode_lint = 0  " Handled by syntastic
"let g:pymode_lint_ignore = "E501"
let g:pymode_folding = 0
let g:pymode_syntax_slow_sync = 0
let g:pymode_trim_whitespaces = 0
let g:pymode_options = 0

" [> NeoMake <]
"" Syntax checkers

" Run on file open/write
autocmd! BufWritePost,BufRead * Neomake

let g:neomake_python_flake8_maker = {
    \ 'args': ['--ignore=E501'],
    \ }

let g:neomake_php_checkers = ['php', 'phpcs', 'phpmd']
let g:neomake_html_checkers = ['tidy']
let g:neomake_vim_checkers = ['vimlint']
let g:neomake_json_checkers = ['jsonlint']
let g:neomake_yaml_checkers = ['js-yaml']
let g:neomake_scss_checkers = ['scss-lint']
let g:neomake_css_checkers = ['csslint']
let g:neomake_handlebars_checkers = ['handlebars']
let g:neomake_tpl_checkers = ['handlebars']
let g:neomake_python_checkers = ['pylint', 'flake8', 'pydocstyle']
let g:neomake_javascript_checkers = ['eslint', 'jshint', 'jscs']


" [> JsBeautify <]

" format selection
autocmd FileType javascript vnoremap <buffer>  <C-f> :call RangeJsBeautify()<cr>
autocmd FileType json vnoremap <buffer>  <C-f> :call RangeJsonBeautify()<cr>
autocmd FileType html vnoremap <buffer> <C-f> :call RangeHtmlBeautify()<cr>
autocmd FileType css vnoremap <buffer> <C-f> :call RangeCSSBeautify()<cr>

" format the whole file
"autocmd FileType javascript nnoremap <buffer>  <C-S-F> :call JsBeautify()<cr>
"autocmd FileType json nnoremap <buffer>  <C-S-F> :call JsonBeautify()<cr>
"autocmd FileType html nnoremap <buffer> <C-S-F> :call HtmlBeautify()<cr>
"autocmd FileType css nnoremap <buffer> <C-S-F> :call CSSBeautify()<cr>

" [> YankStack <]

nmap <leader>p <Plug>yankstack_substitute_older_paste
nmap <leader>P <Plug>yankstack_substitute_newer_paste


" [> Javascript libraries syntax <]

let g:used_javascript_libs = 'jquery,underscore,requirejs,chai,handlebars'


" [> CtrlP <]
" lazy update
let g:ctrlp_lazy_update = 1

" Ignore files and folders
if executable('ag')
    " Use ag over anything else
    let g:ctrlp_user_command = 'ag %s -l --nocolor --path-to-agignore ~/.agignore -g ""'
else
    set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc     " MacOSX/Linux
    let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|node_modules)$',
    \ 'file': '\v\.(exe|so|dll|pdf|toc|log|out|aux)$',
    \ }
    let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard | grep -v  "flash\|3rd_party\|flex\|objectivec\|java\|system_tests\|csharp"']
endif

" Theme
colorscheme PaperColor
highlight ColorColumn ctermbg=8
set colorcolumn=100


" [> JS Context Color <]
" Disabled by default. Call JSContextColor to enable
let g:js_context_colors_enabled = 0


" [> Ultisnips <]
let g:UltiSnipsExpandTrigger       = "<c-j>"
let g:UltiSnipsJumpForwardTrigger  = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-p>"
let g:UltiSnipsListSnippets        = "<c-k>" "List possible snippets based on current file

" [> YouCompleteMe <]
"let g:ycm_key_list_select_completion = ['<TAB>', '<c-j>']
"let g:ycm_key_list_previous_completion = ['<S-TAB>', '<c-k>']
let g:ycm_key_list_select_completion = ['<TAB>']
let g:ycm_key_list_previous_completion = ['<S-TAB>']


" [> Tern <]
nnoremap <c-c>g :TernDef<Cr>
nnoremap <c-c>rr :TernRename<Cr>

" [> TagBar <]
nnoremap <a-n> :TagbarToggle<cr>

" [> Sessions <]
let g:session_autosave = 'no'
let g:session_autoload = 'no'

" [> Tmuxline <]
let g:airline#extensions#tmuxline#enabled = 0
let g:tmuxline_preset = 'tmux'

" [> ESearch <]
if executable('ag')
    " Use ag over anything else
    let g:esearch = {
    \ 'adapter':    'ag',
    \ 'use':        ['visual', 'hlsearch', 'last'],
    \}
endif

" [> vim-test <]
let test#strategy = "neoterm"
nmap <silent> <leader>tf :TestFile<CR>
nmap <silent> <leader>tn :TestNearest<CR>
nmap <silent> <leader>tl :TestLast<CR>
nmap <silent> <leader>tv :TestVisit<CR>
