" Start plugins definition
call plug#begin($HOME.'/.config/nvim/plugins/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'benekastah/neomake'
Plug 'bigfish/vim-js-context-coloring'
Plug 'bling/vim-airline', { 'do' : $HOME.'/.config/nvim/fonts/install' }
Plug 'bronson/vim-trailing-whitespace'
Plug 'carlitux/deoplete-ternjs'
Plug 'easymotion/vim-easymotion'
Plug 'editorconfig/editorconfig-vim'
Plug 'edkolev/tmuxline.vim' ", { 'on': ['Tmuxline', 'TmuxlineSnapshot'] }
Plug 'elzr/vim-json',  { 'for': 'json' }
Plug 'exu/pgsql.vim', { 'for': 'sql' }
Plug 'hail2u/vim-css3-syntax', { 'for': 'css' }
Plug 'hdima/python-syntax/', {'for': 'py'}
Plug 'janko-m/vim-test'
Plug 'jlanzarotta/bufexplorer'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'kassio/neoterm'
Plug 'klen/python-mode'
Plug 'Konfekt/FastFold'
Plug 'kopischke/vim-fetch' " Allows vim to properly open filenames like file.txt:line:col
Plug 'lervag/vimtex', { 'for': 'tex' }
Plug 'majutsushi/tagbar'
Plug 'maksimr/vim-jsbeautify', { 'do' : 'git submodule update --init --recursive' }
Plug 'mhinz/vim-grepper'
Plug 'mhinz/vim-startify'
Plug 'moll/vim-bbye'
Plug 'moll/vim-node'
Plug 'nanotech/jellybeans.vim'
Plug 'othree/html5.vim'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'othree/yajs.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
Plug 'Shougo/deoplete.nvim'
Plug 'SirVer/ultisnips'         " The ultisnips engine
Plug 'honza/vim-snippets'       " And the snippets
Plug 'syngan/vim-vimlint', { 'for': 'vim' }
Plug 'ternjs/tern_for_vim'
Plug 'Townk/vim-autoclose'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'valloric/MatchTagAlways', { 'for': ['html', 'htmldjango'] }
Plug 'vim-dist/PaperColor.vim'
Plug 'xolox/vim-easytags', { 'on': 'TagbarToggle' }
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session', { 'on': ['SaveSession', 'OpenSession'] }
Plug 'ynkdir/vim-vimlparser', { 'for': 'vim' }
Plug 'zchee/deoplete-jedi'
Plug 'mattn/emmet-vim'

call plug#end()

