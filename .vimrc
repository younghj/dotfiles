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
set t_Co=256

"augroup markup_lang
"   autocmd!
"   autocmd filetype html,xml set listchars-=tab:>.
"augroup END

nnoremap ; :
nmap <silent> ,/ :nohlsearch<CR>
syntax on
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
Bundle 'scrooloose/syntastic'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'
Bundle 'jiangmiao/auto-pairs'
Bundle 'sjl/gundo.vim'
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-session'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'

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

"session management
let g:session_directory = "~/.vim/session"
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1

nnoremap <leader>so :OpenSession
nnoremap <leader>ss :SaveSession
nnoremap <leader>sd :DeleteSession<CR>
nnoremap <leader>sc :CloseSession<CR>

"airline
set laststatus=2
"let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='badwolf'
let g:airline_left_sep='>'
let g:airline_right_sep='<'
let g:airline#extensions#branch#enabled = 1
