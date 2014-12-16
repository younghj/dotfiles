set nocompatible
let mapleader="\\"
set hidden
set nowrap
set linebreak
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
set history=10000
set undolevels=10000
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
set background=dark
set digraph
set noswapfile
set ff=unix
set encoding=utf-8
set so=999

augroup markup_lang
   au!
   au filetype html,xml set listchars-=tab:>.
augroup END

augroup line_cont
   au!
   au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
augroup END

augroup side_number
   au!
   "au InsertEnter * :set number
   "au InsertLeave * :set relativenumber
   au BufEnter * :set number
   au BufEnter * :set relativenumber
augroup END

augroup syntaxChange
   au!
   au BufRead,BufNewFile *.md set filetype=markdown
augroup END

nnoremap ; :
nmap <silent> <leader>/ :nohlsearch<CR>
syntax on
inoremap jj <Esc>
cnoremap jj <Esc>
vmap Q gq
nmap Q gqap
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <Leader>t :CommandT<CR>
nmap ;vimset :e $HOME/.vimrc<CR>
nnoremap j gj
nnoremap k gk
nmap ;todo :e $HOME/code/todo<CR>

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

Bundle 'gmarik/Vundle.vim'
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdcommenter'
Plugin 'SirVer/ultisnips'
Bundle 'honza/vim-snippets'
Bundle 'jiangmiao/auto-pairs'
Bundle 'sjl/gundo.vim'
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-session'
Bundle 'wincent/command-t'
Bundle 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'

filetype plugin indent on
filetype plugin on
"AutoPairs
let g:AutoPairsFlyMode = 1

"YCM
let g:ycm_min_num_of_chars_for_completion = 2

"Gundo
set undodir=~/.vim/tmp/undo//
set backupdir=~/.vim/tmp/backup//

nnoremap :GNT :GundoToggle<CR>
set undofile

"session management
let g:session_directory = "~/.vim/sessions"
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

"CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_regexp = 1

"UltiSnips YCM integration

"let g:UltiSnipsExpandTrigger='<C-j>'
"let g:UltiSnipsJumpForwardTrigger='<C-j>'
"let g:UltiSnipsJumpBackwardTrigger='<C-k>'
"let g:UltiSnipsSnippetDirectories = ['UltiSnips','~/.vim/bundle/vim-snippets/UltiSnips']

""UltiSnips completion function that tries to expand a snippet.
""If there's no snippet for expanding, it checks for completion window
""and if it's shown, selects first element. If there's no completion window
""it tries to jump to next placeholder. If there's no placeholder it just
""returns a TAB key

"function! g:UltiSnips_Complete()
   "call UltiSnips#ExpandSnippet()
   "if g:ulti_expand_res == 0
      "if pumvisible()
         "return '\<C-n>'
      "else
         "call UltiSnips#JumpForwards()
         "if g:ulti_jump_forwards_res == 0
            "return '\<TAB>'
         "endif
      "endif
   "endif
   "return ''
"endfunction

"au InsertEnter * exec 'inoremap <silent> ' . g:UltiSnipsExpandTrigger . ' <C-R>=g:UltiSnips_Complete()<cr>'
