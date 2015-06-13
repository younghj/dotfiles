set nocompatible
let mapleader=","
set encoding=utf-8
" Plugin/Vundle setup {{{
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

Plugin 'gmarik/Vundle.vim' "need external
"Bundle 'scrooloose/syntastic'
"Bundle 'tpope/vim-vinegar'
Bundle 'ervandew/supertab'
Plugin 'Valloric/YouCompleteMe' "need external
Bundle 'Valloric/MatchTagAlways'
Bundle 'scrooloose/nerdcommenter'
Plugin 'SirVer/ultisnips'
Bundle 'honza/vim-snippets'
Bundle 'jiangmiao/auto-pairs'
Bundle 'sjl/gundo.vim'
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-session'
Bundle "kien/ctrlp.vim"
Bundle 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'sjl/badwolf'
"Bundle 'vim-pandoc/vim-pandoc'
"Bundle 'vim-pandoc/vim-pandoc-syntax'
"Bundle 'vim-pandoc/vim-pandoc-after'
Bundle 'xuhdev/SingleCompile'
Bundle 'yegappan/mru'
Bundle 'joequery/Stupid-EasyMotion'
Bundle 'scrooloose/nerdtree'
Plugin 'rking/ag.vim' "need external
Bundle 'reedes/vim-colors-pencil'
Bundle 'flazz/vim-colorschemes'
Bundle 'majutsushi/tagbar'
Bundle 'godlygeek/tabular'
Bundle 'airblade/vim-gitgutter'
Bundle 'rhysd/clever-f.vim'
Bundle 'mileszs/ack.vim'
"Bundle 'powerline/powerline'
"Bundle 'henrik/vim-indexed-search'

filetype plugin indent on
filetype plugin on
set omnifunc=syntaxcomplete#Complete

"tagbar {{{
let g:tagbar_autofocus = 1
let g:tagbar_autoclose = 1
let g:tagbar_compact = 1
let g:tagbar_left = 1
nnoremap <c-m> :tagbartoggle<cr>
"}}}

"Nerdtree{{{
nnoremap <C-n> :NERDTreeToggle<CR>
"}}}

"AutoPairs{{{
let g:AutoPairsFlyMode = 0
let g:AutoPairsShortcutBackInsert = '<M-b>'
"}}}

"YCM{{{
let g:ycm_min_num_of_chars_for_completion = 1 "Might cause some problems
let g:ycm_use_ultisnips_completer = 1
let g:ycm_cache_omnifunc = 1
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

"set completeopt-=preview
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
"let g:ycm_autoclose_preview_window_after_completion = 1
"}}}

"Session Management{{{
let g:session_directory = "~/.vim/sessions"
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1

nnoremap <leader>so :OpenSession 
nnoremap <leader>ss :SaveSession 
nnoremap <leader>sd :DeleteSession<CR>
nnoremap <leader>sc :CloseSession<CR>
"}}}

" Airline{{{
let g:airline#extensions#tabline#enabled = 1
"let g:airline_theme='badwolf'
let g:airline_left_sep='>'
let g:airline_right_sep='<'
let g:airline#extensions#branch#enabled = 1
" }}}

" CtrlP{{{
let g:ctrlp_map = '<leader>t'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_regexp = 1
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
"}}}

" Surround.vim {{{
let g:surround_42 = "**\r**"
nnoremap ** :exe "norm v$hS*"<cr>
nnoremap __ :exe "norm v$hS_"<cr>
vmap * S*
vmap _ S_
" }}}

" UltiSnips YCM and SuperTab Collab {{{
let g:ycm_key_list_select_completion = ['<C-n>','<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>','<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
" }}}

" Syntastic {{{
"let g:syntastic_java_javac_classpath = "./lib/*.jar\n./src\n."
"let g:synastic_disabled_filetypes = "java"
" }}}

" SingleCompile {{{
"nnoremap ;sc<CR> :SCCompileRun<CR>
"nnoremap ;sv<CR> :SCViewResult<CR>
cnoremap <buffer> sc<TAB> :SCCompileRun<CR>
cnoremap <buffer> sv<TAB> :SCViewResult<CR>
" }}}

" Stupid Easy Motion {{{
map <C-o> <Leader><Leader>w
map <C-e> <Leader><Leader>W
" }}}

" git and ack stuff {{{
let g:gitgutter_enabled =1
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0

nnoremap <leader>G mG:Git! 
nnoremap <leader>g :Git 
nnoremap <leader>A :!ag 
nnoremap <leader>a :Ag! 
let g:ackprg = "ag --nogroup --column"
" }}}

"clever-f {{{
let g:clever_f_show_prompt = 1
let g:clever_f_across_no_line = 1
"}}}

" }}}

" ==============================

" Basic options {{{
" Base setup {{{
set mouse-=a
"set mouse=nicr
set nodigraph

set showmode
set showcmd
set showmatch

set ttyfast
set ruler
set laststatus=2
set lazyredraw
set splitbelow
set splitright
set autowriteall
set autoread
set hidden

set nowrap
set linebreak
set backspace=indent,eol,start
set spelllang=en_ca
set wildignorecase

set autoindent
set copyindent
set smartindent
set shiftround
set smartcase
set smarttab
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

set gdefault
set ignorecase
set hlsearch
set incsearch

set history=5000
set undolevels=5000
set noswapfile

set title
set visualbell
set noerrorbells

set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

set path=**
set encoding=utf-8
set t_Co=256
set background=dark
set ff=unix
set so=999
set foldmethod=marker
set timeoutlen=1000 ttimeoutlen=0
set term=screen-256color

" Time out on key codes but not mappings
" Basically this makes terminal Vim work sanely
"set notimeout
"set ttimeout
"set ttimeoutlen=10

" Save when losing focus
"au FocusLost * :silent! wall


" }}}
" Cursorline {{{
" Only show cursorline in the current window and in normal mode.

augroup cline
    au!
    au WinLeave,InsertEnter * set nocursorline
    au WinEnter,InsertLeave * set cursorline
augroup END

" }}}
" Wildmenu completion {{{
set wildmenu
set wildmode=list:longest

set wildignore+=.hg,.git,.svn                    " Version control
set wildignore+=*.aux,*.out,*.toc                " LaTeX intermediate files
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.spl                            " compiled spelling word lists
set wildignore+=*.sw?                            " Vim swap files
set wildignore+=*.DS_Store                       " OSX bullshit

set wildignore+=*.luac                           " Lua byte code

set wildignore+=migrations                       " Django migrations
set wildignore+=*.pyc                            " Python byte code

set wildignore+=*.orig                           " Merge resolution files
" }}}
" Backups {{{
set directory=~/.vim/tmp/swap//
set undodir=~/.vim/tmp/undo//
set backupdir=~/.vim/tmp/backup//

nnoremap :GNT :GundoToggle<CR>
set backup
set undofile

" Make those folders automatically if they don't already exist.
if !isdirectory(expand(&undodir))
    call mkdir(expand(&undodir), "p")
endif
if !isdirectory(expand(&backupdir))
    call mkdir(expand(&backupdir), "p")
endif
if !isdirectory(expand(&directory))
    call mkdir(expand(&directory), "p")
endif
" }}} 
" Basic Autocmd Groups {{{
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
    au BufEnter * :set number
augroup END

augroup syntaxChange
    au!
    au BufRead,BufNewFile *.m?d? set filetype=markdown
    au BufRead,BufNewFile .bash_functions set filetype=sh
augroup END

augroup saveBuf
    au!
    autocmd BufLeave,FocusLost * silent! wall
augroup END
" }}}
" ColorScheme{{{
colorscheme pencil
"colorscheme hipster
colorscheme badwolf
"let g:molokai_original = 1
"let g:rehash256 = 1
"colorscheme default
"
" Reload the colorscheme whenever we write the file.
"augroup color_dev
"au!
"au BufWritePost badwolf.vim color badwolf
"augroup END
" }}}
" }}}

" ==============================

" Basic mappings {{{
nnoremap ; :
nmap <silent> <leader>l :nohlsearch<CR>
nnoremap <silent> <leader>/ :execute 'vimgrep /'.@/.'/g %'<CR>:copen<CR>
"stop highlighting searches
syntax on
inoremap jj <Esc>
cnoremap jj <Esc>
vmap Q gq
nmap Q gqap
nmap ;vimset :e $HOME/.vimrc<CR>
nmap ;vismet :e $HOME/.vimrc<CR>
nnoremap j gj
nnoremap k gk
nmap ;todo :e $HOME/code/todo.md<CR>
nnoremap <leader>W :set wrap!<CR>
cnoremap <buffer> so<TAB> so $MYVIMRC<CR>
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
noremap h <NOP>
noremap l <NOP>
noremap \ ;
nnoremap <CR> ;
nnoremap <TAB> <C-w>

" }}}

" ==============================

" Filetype specific {{{

" Assembly {{{

augroup ft_asm
    au!
    au FileType asm setlocal noexpandtab shiftwidth=8 tabstop=8 softtabstop=8
augroup END

" }}}
" C {{{

augroup ft_c
    au!
    au FileType c setlocal foldmethod=marker foldmarker={,}
augroup END

augroup ft_cpp
    au!
    au FileType cpp cnoremap <buffer> pc<TAB> :!g++ -std=c++11 -O3 *.cpp -o out<CR>:!time ./out<CR>

augroup END

" }}}
" CSS and LessCSS {{{

augroup ft_css
    au!

    au BufNewFile,BufRead *.less setlocal filetype=less

    au Filetype less,css setlocal foldmethod=marker
    au Filetype less,css setlocal foldmarker={,}
    au Filetype less,css setlocal omnifunc=csscomplete#CompleteCSS
    au Filetype less,css setlocal iskeyword+=-

    " Use <leader>S to sort properties.  Turns this:
    "
    "     p {
    "         width: 200px;
    "         height: 100px;
    "         background: red;
    "
    "         ...
    "     }
    "
    " into this:

    "     p {
    "         background: red;
    "         height: 100px;
    "         width: 200px;
    "
    "         ...
    "     }
    au BufNewFile,BufRead *.less,*.css nnoremap <buffer> <localleader>S ?{<CR>jV/\v^\s*\}?$<CR>k:sort<CR>:noh<CR>

    " Make {<cr> insert a pair of brackets in such a way that the cursor is correctly
    " positioned inside of them AND the following code doesn't get unfolded.
    au BufNewFile,BufRead *.less,*.css inoremap <buffer> {<cr> {}<left><cr><space><space><space><space>.<cr><esc>kA<bs>
augroup END

" }}}
" Java {{{

augroup ft_java
    au!

    au FileType java setlocal foldmethod=marker
    au FileType java setlocal foldmarker={,}
    au FileType java cnoremap <buffer> pc<TAB> :w<cr>:!javac %; java -cp . %:r<CR>
    au FileType java setlocal omnifunc=javacomplete#Complete
    au FileType java setlocal completefunc=javacomplete#CompleteParamsInfo
augroup END

" }}}
" Javascript {{{
function! MakeSpacelessBufferIabbrev(from, to)
    execute "iabbrev <silent> <buffer> ".a:from." ".a:to."<C-R>=EatChar('\\s')<CR>"
endfunction

augroup ft_javascript
    au!

    au FileType javascript setlocal nofoldenable
    au FileType javascript call MakeSpacelessBufferIabbrev('clog', 'console.log();<left><left>')

    " Make {<cr> insert a pair of brackets in such a way that the cursor is correctly
    " positioned inside of them AND the following code doesn't get unfolded.
    au Filetype javascript inoremap <buffer> {<cr> {}<left><cr><space><space><space><space>.<cr><esc>kA<bs>
    " }

    " Prettify a hunk of JSON with <localleader>p
    au FileType javascript nnoremap <buffer> <localleader>p ^vg_:!python -m json.tool<cr>
    au FileType javascript vnoremap <buffer> <localleader>p :!python -m json.tool<cr>
    au FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
augroup END

" }}}
" Mail {{{

augroup ft_mail
    au!

    au Filetype mail setlocal spell
augroup END

" }}}
" Markdown {{{

augroup ft_markdown
    au!

    au BufNewFile,BufRead *.m*down setlocal filetype=markdown foldlevel=1

    " Use <localleader>1/2/3 to add headings.
    au Filetype markdown nnoremap <buffer> <localleader>1 yypVr=:redraw<cr>
    au Filetype markdown nnoremap <buffer> <localleader>2 yypVr-:redraw<cr>
    au Filetype markdown nnoremap <buffer> <localleader>3 mzI###<space><esc>`zllll
    au Filetype markdown nnoremap <buffer> <localleader>4 mzI####<space><esc>`zlllll

    au Filetype markdown nnoremap <buffer> <localleader>p VV:'<,'>!python -m json.tool<cr>
    au Filetype markdown vnoremap <buffer> <localleader>p :!python -m json.tool<cr>
    au Filetype markdown set spell 
    au Filetype markdown set encoding=latin-1

    au Filetype markdown inoremap <C-z> <Esc>[s1z=gi
    au Filetype markdown nnoremap <C-z> [sz=
    au Filetype markdown nnoremap <C-[> [szg
    au Filetype markdown inoremap <C-k> <C-k>*

augroup END

" }}}
" Nand2Tetris HDL {{{

augroup ft_n2thdl
    au!

    au BufNewFile,BufRead *.hdl set filetype=n2thdl
augroup END

" }}}
" Python {{{

augroup ft_python
    au!

    au FileType python setlocal softtabstop=2 tabstop=2 shiftwidth=2
    au FileType python setlocal define=^\s*\\(def\\\\|class\\)
    au FileType man nnoremap <buffer> <cr> :q<cr>

    " built-in Python syntax, you couldn't let me
    " override this in a normal way, could you?
    au FileType python if exists("python_space_error_highlight") | unlet python_space_error_highlight | endif

    au FileType python iabbrev <buffer> afo assert False, "Okay"
    au FileType python cnoremap <buffer> pc<TAB> :w<cr>:!python %<CR>
augroup END

" }}}
" Ruby {{{

augroup ft_ruby
    au!
    au Filetype ruby setlocal foldmethod=syntax
    au BufRead,BufNewFile Capfile setlocal filetype=ruby
augroup END

" }}}
" Standard In {{{

augroup ft_stdin
    au!

    " Treat buffers from stdin (e.g.: echo foo | vim -) as scratch.
    au StdinReadPost * :set buftype=nofile
augroup END

" }}}

" XML {{{

augroup ft_xml
    au!

    au FileType xml setlocal foldmethod=manual

    " Use <localleader>f to fold the current tag.
    au FileType xml nnoremap <buffer> <localleader>f Vatzf

    " Indent tag
    au FileType xml nnoremap <buffer> <localleader>= Vat=
augroup END

" }}}

" }}}

" ===============================

" Text objects {{{

" Next and Last {{{
"
" Motion for "next/last object".  "Last" here means "previous", not "final".
" Unfortunately the "p" motion was already taken for paragraphs.
"
" Next acts on the next object of the given type, last acts on the previous
" object of the given type.  These don't necessarily have to be in the current
" line.
"
" Currently works for (, [, {, and their shortcuts b, r, B. 
"
" Next kind of works for ' and " as long as there are no escaped versions of
" them in the string (TODO: fix that).  Last is currently broken for quotes
" (TODO: fix that).
"
" Some examples (C marks cursor positions, V means visually selected):
"
" din'  -> delete in next single quotes                foo = bar('spam')
"                                                      C
"                                                      foo = bar('')
"                                                                C
"
" canb  -> change around next parens                   foo = bar('spam')
"                                                      C
"                                                      foo = bar
"                                                               C
"
" vin"  -> select inside next double quotes            print "hello ", name
"                                                       C
"                                                      print "hello ", name
"                                                             VVVVVV

onoremap an :<c-u>call <SID>NextTextObject('a', '/')<cr>
xnoremap an :<c-u>call <SID>NextTextObject('a', '/')<cr>
onoremap in :<c-u>call <SID>NextTextObject('i', '/')<cr>
xnoremap in :<c-u>call <SID>NextTextObject('i', '/')<cr>

onoremap al :<c-u>call <SID>NextTextObject('a', '?')<cr>
xnoremap al :<c-u>call <SID>NextTextObject('a', '?')<cr>
onoremap il :<c-u>call <SID>NextTextObject('i', '?')<cr>
xnoremap il :<c-u>call <SID>NextTextObject('i', '?')<cr>


function! s:NextTextObject(motion, dir)
    let c = nr2char(getchar())
    let d = ''

    if c ==# "b" || c ==# "(" || c ==# ")"
        let c = "("
    elseif c ==# "B" || c ==# "{" || c ==# "}"
        let c = "{"
    elseif c ==# "r" || c ==# "[" || c ==# "]"
        let c = "["
    elseif c ==# "'"
        let c = "'"
    elseif c ==# '"'
        let c = '"'
    else
        return
    endif

    " Find the next opening-whatever.
    execute "normal! " . a:dir . c . "\<cr>"

    if a:motion ==# 'a'
        " If we're doing an 'around' method, we just need to select around it
        " and we can bail out to Vim.
        execute "normal! va" . c
    else
        " Otherwise we're looking at an 'inside' motion.  Unfortunately these
        " get tricky when you're dealing with an empty set of delimiters because
        " Vim does the wrong thing when you say vi(.

        let open = ''
        let close = ''

        if c ==# "(" 
            let open = "("
            let close = ")"
        elseif c ==# "{"
            let open = "{"
            let close = "}"
        elseif c ==# "["
            let open = "\\["
            let close = "\\]"
        elseif c ==# "'"
            let open = "'"
            let close = "'"
        elseif c ==# '"'
            let open = '"'
            let close = '"'
        endif

        " We'll start at the current delimiter.
        let start_pos = getpos('.')
        let start_l = start_pos[1]
        let start_c = start_pos[2]

        " Then we'll find it's matching end delimiter.
        if c ==# "'" || c ==# '"'
            " searchpairpos() doesn't work for quotes, because fuck me.
            let end_pos = searchpos(open)
        else
            let end_pos = searchpairpos(open, '', close)
        endif

        let end_l = end_pos[0]
        let end_c = end_pos[1]

        call setpos('.', start_pos)

        if start_l == end_l && start_c == (end_c - 1)
            " We're in an empty set of delimiters.  We'll append an "x"
            " character and select that so most Vim commands will do something
            " sane.  v is gonna be weird, and so is y.  Oh well.
            execute "normal! ax\<esc>\<left>"
            execute "normal! vi" . c
        elseif start_l == end_l && start_c == (end_c - 2)
            " We're on a set of delimiters that contain a single, non-newline
            " character.  We can just select that and we're done.
            execute "normal! vi" . c
        else
            " Otherwise these delimiters contain something.  But we're still not
            " sure Vim's gonna work, because if they contain nothing but
            " newlines Vim still does the wrong thing.  So we'll manually select
            " the guts ourselves.
            let whichwrap = &whichwrap
            set whichwrap+=h,l

            execute "normal! va" . c . "hol"

            let &whichwrap = whichwrap
        endif
    endif
endfunction

" }}}
" Numbers {{{

" Motion for numbers.  Great for CSS.  Lets you do things like this:
"
" margin-top: 200px; -> daN -> margin-top: px;
"              ^                          ^
" TODO: Handle floats.

onoremap N :<c-u>call <SID>NumberTextObject(0)<cr>
xnoremap N :<c-u>call <SID>NumberTextObject(0)<cr>
onoremap aN :<c-u>call <SID>NumberTextObject(1)<cr>
xnoremap aN :<c-u>call <SID>NumberTextObject(1)<cr>
onoremap iN :<c-u>call <SID>NumberTextObject(1)<cr>
xnoremap iN :<c-u>call <SID>NumberTextObject(1)<cr>

function! s:NumberTextObject(whole)
    let num = '\v[0-9]'

    " If the current char isn't a number, walk forward.
    while getline('.')[col('.') - 1] !~# num
        normal! l
    endwhile

    " Now that we're on a number, start selecting it.
    normal! v

    " If the char after the cursor is a number, select it.
    while getline('.')[col('.')] =~# num
        normal! l
    endwhile

    " If we want an entire word, flip the select point and walk.
    if a:whole
        normal! o

        while col('.') > 1 && getline('.')[col('.') - 2] =~# num
            normal! h
        endwhile
    endif
endfunction

" }}}
"}}}
" Folding {{{

set foldlevelstart=2

" Space to toggle folds.
nnoremap <Space> za
vnoremap <Space> za

" Make zO recursively open whatever fold we're in, even if it's partially open.
nnoremap zO zczO

" 'Focus' the current line.  Basically:
"
" 1. Close all folds.
" 2. Open just the folds containing the current line.
" 3. Move the line to a little bit (15 lines) above the center of the screen.
" 4. Pulse the cursor line.  My eyes are bad.
"
" This mapping wipes out the z mark, which I never use.
"
" I use :sus for the rare times I want to actually background Vim.
nnoremap <c-x> mzzMzvzz15<c-e>`z
"nnoremap <c-a-z> zrzO

function! MyFoldText() " {{{
    let line = getline(v:foldstart)

    let nucolwidth = &fdc + &number * &numberwidth
    let windowwidth = winwidth(0) - nucolwidth - 3
    let foldedlinecount = v:foldend - v:foldstart

    " expand tabs into spaces
    let onetab = strpart('          ', 0, &tabstop)
    let line = substitute(line, '\t', onetab, 'g')

    let line = strpart(line, 0, windowwidth - 2 -len(foldedlinecount))
    let fillcharcount = windowwidth - len(line) - len(foldedlinecount)
    return line . '¿' . repeat(" ",fillcharcount) . foldedlinecount . '¿' . ' '
endfunction " }}}
set foldtext=MyFoldText()

" }}}

" QuickFix {{{
function! GrepQuickFixOpp(pat)
    let all = getqflist()
    for d in all
        if bufname(d['bufnr']) =~ a:pat || d['text'] =~ a:pat
            call remove(all, index(all,d))
        endif
    endfor
    call setqflist(all)
endfunction
command! -nargs=* Qgrep call GrepQuickFix(<q-args>)

function! GrepQuickFix(pat)
    let all = getqflist()
    for d in all
        if !(bufname(d['bufnr']) =~ a:pat || d['text'] =~ a:pat )
            call remove(all, index(all,d))
        endif
    endfor
    call setqflist(all)
endfunction
command! -nargs=* Qgrepo call GrepQuickFixOpp(<q-args>)

augroup quickfix
    autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR>
    autocmd BufReadPost quickfix nnoremap <buffer> Q :Qgrep 
    autocmd BufReadPost quickfix nnoremap <buffer> <leader>q :Qgrepo 

    autocmd BufReadPost quickfix nnoremap <silent> <buffer> h  <C-W><CR><C-w>K
    autocmd BufReadPost quickfix nnoremap <silent> <buffer> H  <C-W><CR><C-w>K<C-w>b
    autocmd BufReadPost quickfix nnoremap <silent> <buffer> o  <CR>
    autocmd BufReadPost quickfix nnoremap <silent> <buffer> t  <C-w><CR><C-w>T
    autocmd BufReadPost quickfix nnoremap <silent> <buffer> T  <C-w><CR><C-w>TgT<C-W><C-W>
    autocmd BufReadPost quickfix nnoremap <silent> <buffer> v  <C-w><CR><C-w>H<C-W>b<C-W>J<C-W>t

    nnoremap <silent> <buffer> e <CR><C-w><C-w>:cclose<CR>
    nnoremap <silent> <buffer> go <CR>:copen<CR>
    nnoremap <silent> <buffer> q  :cclose<CR>

    nnoremap <silent> <buffer> gv :let b:height=winheight(0)<CR><C-w><CR><C-w>H:copen<CR><C-w>J:exe printf(":normal %d\<lt>c-w>_", b:height)<CR>
augroup END
" }}}

" Empty bd {{{
function! DeleteEmptyBuffers()
    let [i, n; empty] = [1, bufnr('$')]
    while i <= n
        if bufexists(i) && bufname(i) == ''
            call add(empty, i)
        endif
        let i += 1
    endwhile
    if len(empty) > 0
        exe 'bdelete' join(empty)
    endif
endfunction
command! Ebd call DeleteEmptyBuffers()
" }}}
