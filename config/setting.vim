"
" WebVim Configuration : global settings
"
" author: Bertrand Chevrier <chevrier.bertrand@gmail.com>
" source: https://github.com/krampstudio/dotvim
" year  : 2015
"

" wrap end of line
set wrap

" reload buffer if it changes on disk
set autoread

" show line numbers
set number

" Less laggy when editing python files
set lazyredraw

" syntax highlighting
syntax on
set background=dark
set t_Co=256

"indent
set smartindent
set autoindent
set copyindent
set shiftwidth=4
set shiftround
set backspace=indent,eol,start
set smarttab
set expandtab

"search
set showmatch
set smartcase

set hlsearch
set incsearch

" folding based on indentation
set nofoldenable
set foldmethod=indent

" mouse
set mouse=a

" spell check, to be activated manually
set spelllang=en_us
set nospell

set cursorline
set ignorecase

" Two tabs only for sass files
autocmd Filetype scss setlocal ts=2 sts=2 sw=2
