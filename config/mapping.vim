"
" WebVim Configuration : global mapping
"
" author: Bertrand Chevrier <chevrier.bertrand@gmail.com>
"

" leader
"let g:mapleader = ","
"let g:localmapleader = "\\"

"" move the current line below
"nnoremap <leader>- ddp

"" move the current line above
"nnoremap <leader>_ ddkP

" switch tab
nnoremap <S-right> :tabn<CR>
nnoremap <S-left> :tabp<CR>

nnoremap <s-right> :bn<CR>
nnoremap <s-left> :bp<CR>

" insert mode uppercase the current word
"  <esc> : go to normal mode
"  v 	 : visual mode
"  iw 	 : select the current word
"  U 	 : uppercase selection
"  i 	 : back to insert mode
inoremap <c-u> <esc>viwUi

" remove last search highlight
nnoremap <C-l> :nohlsearch<CR><C-l>

" Wrap a word in double quotes
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel

" Wrap a word in single quotes
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel

" select inside parents
onoremap in( :<c-u>normal! f(vi(<cr>

" select inside braces
onoremap in{ :<c-u>normal! f{vi{<cr>

" select inside brackets
onoremap in[ :<c-u>normal! f[vi[<cr>


" save
nnoremap WW :w<CR>


" pane navigation
nmap <silent> <a-k> :wincmd k<CR>
nmap <silent> <a-j> :wincmd j<CR>
nmap <silent> <a-h> :wincmd h<CR>
nmap <silent> <a-l> :wincmd l<CR>

" Open MYVIMRC in a vsplit
nnoremap <leader>ev :split $MYVIMRC<cr>

" Source MYVIMRC
nnoremap <leader>sv :source $MYVIMRC<cr>

set pastetoggle=<F2>

if g:hardcoreMode == 1

    " Leave insert mode (like <esc>) and disable <esc>
    inoremap jk <esc>
    "inoremap <special> <esc> <nop>
    "inoremap <esc>^[ <esc>^[

    " Disable arrow keys

    "nnoremap <up> <nop>
    "nnoremap <down> <nop>
    "nnoremap <left> <nop>
    "nnoremap <right> <nop>

    "inoremap <up> <nop>
    "inoremap <down> <nop>
    "inoremap <left> <nop>
    "inoremap <right> <nop>
endif

" exit insert mode in a terminal
if has('nvim')
    tnoremap <Esc> <C-\><C-n>
    tnoremap jk <C-\><C-n>
endif

