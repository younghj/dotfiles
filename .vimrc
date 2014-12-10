set nocompatible
let mapleader=","
set hidden
set nowrap
set backspace=indent,eol,start
set autoindent
set copyindent
set number
set shiftround
set showmatch
set gdefault
set ignorecase
set smartcase
set smarttab
set hlsearch
set incsearch
set history=100
set undolevels=100
set title
set visualbell
set noerrorbells
set wildignore=*.swp,*.bak,*.pyc,*.class
set ruler
set tabstop=3
set shiftwidth=3
set smartindent
set clipboard=unnamed
set expandtab
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

if has('autocmd')
   autocmd filetype html,xml set listchars-=tab:>.
endif

nnoremap ; :
nmap <silent> ,/ :nohlsearch<CR>
syntax on
filetype plugin indent on
imap jj <Esc>
imap <Home> <Esc>:tabp<CR>
imap <End> <Esc>:tabn<CR>
map <Home> :tabp<CR>
map <End> :tabn<CR>
vmap Q gq
nmap Q gqap
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <Leader>t :CommandT<CR>
nnoremap :vimset :e $HOME/.vimrc<CR>

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'Valloric/YouCompleteMe'
Plugin 'wincent/command-t'
Bundle 'scrooloose/syntastic'

Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"

Bundle "honza/vim-snippets"

Bundle "jiangmiao/auto-pairs"
Bundle "sjl/gundo.vim"

filetype plugin indent on
filetype plugin on
"AutoPairs
let g:AutoPairsFlyMode = 1

"YCM
let g:ycm_min_num_of_chars_for_completion = 1

"Gundo
set undodir=~/.vim/tmp/undo//
set backupdir=~/.vim/tmp/backup//

nnoremap :GNT :GundoToggle<CR>
set undofile

"C
let g:C_UseTool_cmake = 'yes'
