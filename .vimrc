" Disable vi-compatibility
set nocompatible

"===============================================================================
" vim-plug
"===============================================================================

call plug#begin('~/.vim/plugged')
Plug 'Shougo/vimproc.vim', { 'do': 'make' }


"===============================================================================
" NeoBundle
"===============================================================================

" if has ('vim_starting')
  " set runtimepath+=~/.vim/bundle/neobundle.vim/
  " set runtimepath+=~/.dotfiles/.fzf
" endif

" call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" NeoBundleFetch 'Shougo/neobundle.vim'

" NeoBundle 'Shougo/vimproc', { 'build': {
      " \   'windows': 'make -f make_mingw32.mak',
      " \   'cygwin': 'make -f make_cygwin.mak',
      " \   'mac': 'make -f make_mac.mak',
      " \   'unix': 'make -f make_unix.mak',
      " \ } }

" Fuzzy search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }
Plug 'Shougo/unite.vim'
" NeoBundle 'Shougo/unite-outline'
" NeoBundle 'Shougo/unite-help'
Plug 'Shougo/unite-session'
Plug 'Shougo/neomru.vim'
Plug 'thinca/vim-unite-history'
" NeoBundle 'mileszs/ack.vim'

" Code completion
" NeoBundle'Shougo/neocomplcache'
" NeoBundle 'vim-scripts/AutoComplPop'
" NeoBundle 'Valloric/YouCompleteMe'
" NeoBundle 'Shougo/neocomplete.vim'
" NeoBundle 'wellle/tmux-complete.vim'

" Snippets
" NeoBundle 'Shougo/neosnippet'
" NeoBundle 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
" NeoBundle 'JazzCore/neocomplcache-ultisnips'

" Marks
" NeoBundle 'kshenoy/vim-signature'
" NeoBundle 'airblade/vim-gitgutter'

" Comments
Plug 'scrooloose/nerdcommenter'

" File browsing
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
" NeoBundle 'Shougo/vimfiler'

" Syntax checker
" NeoBundle 'scrooloose/syntastic'

" Shell
" NeoBundle 'thinca/vim-quickrun'
" NeoBundle 'Shougo/vimshell'
" NeoBundle 'tpope/vim-dispatch'

" File types
" NeoBundle 'rstacruz/sparkup', {'rtp': 'vim'} "HTML
" NeoBundle 'amirh/HTML-AutoCloseTag'
" NeoBundle 'tpope/vim-markdown' "Markdown
" NeoBundle 'terryma/vim-instant-markdown' "Markdown
" NeoBundle 'vim-ruby/vim-ruby' "Ruby
" NeoBundle 'tpope/vim-rails'
" NeoBundle 'psykidellic/vim-jekyll' "Jekyll
Plug 'kchmck/vim-coffee-script' "CoffeeScript
" NeoBundle 'Chiel92/vim-autoformat'
" NeoBundle 'tpope/vim-endwise' " Conflicts with delimitMate
" NeoBundle 'tsaleh/vim-matchit'
" NeoBundle 'othree/html5.vim'
" NeoBundle 'vim-scripts/indenthtml.vim'
" NeoBundle 'pangloss/vim-javascript' "Javascript
" NeoBundle 'Blackrush/vim-gocode'

" Git
" NeoBundle 'tpope/vim-fugitive'

" Motions
Plug 'Lokaltog/vim-easymotion'
" NeoBundle 'goldfeld/vim-seek'

" Text Objects
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire' " ae, ie
" NeoBundle 'kana/vim-textobj-lastpat' " a/, i/, a?, i?
" NeoBundle 'kana/vim-textobj-line' " al, il
" NeoBundle 'kana/vim-textobj-indent' " ai, ii, aI, iI
" NeoBundle 'lucapette/vim-textobj-underscore' " a_, i_
Plug 'terryma/vim-expand-region'

" Tags
" NeoBundle 'xolox/vim-misc'
" NeoBundle 'xolox/vim-easytags'
" NeoBundle 'majutsushi/tagbar'

" Status line
" NeoBundle 'bling/vim-airline' " So much faster than Powerline! :)

" Color themems
" NeoBundle 'altercation/vim-colors-solarized'
" NeoBundle 'tomasr/molokai'
" NeoBundle 'Lokaltog/vim-distinguished'
" NeoBundle 'chriskempson/base16-vim'
" NeoBundle 'tpope/vim-vividchalk'
" NeoBundle 'chriskempson/tomorrow-theme', {'rtp': 'vim'}
" NeoBundle 'rainux/vim-desert-warm-256'
" NeoBundle 'nanotech/jellybeans.vim'
Plug 'junegunn/seoul256.vim'
" NeoBundle 'vim-scripts/wombat256.vim'

" Misc
Plug 'kana/vim-submode'
" NeoBundle 'kana/vim-scratch'
" NeoBundle 'vim-scripts/BufOnly.vim'
" NeoBundle 'sjl/gundo.vim'
" NeoBundle 't9md/vim-quickhl'
" NeoBundle 'mattn/webapi-vim'
" NeoBundle 'mattn/gist-vim'
" NeoBundle 'koron/nyancat-vim'
" NeoBundle 'Raimondi/delimitMate'
Plug 'ton/vim-bufsurf'
Plug 'terryma/vim-smooth-scroll'
Plug 'terryma/vim-multiple-cursors'
" NeoBundle 'bilalq/lite-dfm'
" NeoBundle 'junegunn/goyo.vim'

" Ones that I don't really use anymore
" NeoBundle 'vim-scripts/TaskList.vim'
" NeoBundle 'myusuf3/numbers.vim'
" NeoBundle 'kana/vim-arpeggio'
" NeoBundle 'kana/vim-smartinput'
" NeoBundle 'Shougo/echodoc'
" NeoBundle 'klen/python-mode'
" NeoBundle 'nathanaelkane/vim-indent-guides'
" NeoBundle 'hynek/vim-python-pep8-indent'
" NeoBundle 'kien/ctrlp.vim'
" NeoBundle 'mattn/calendar-vim'
" NeoBundle 'sjl/clam.vim'
" NeoBundle 'xolox/vim-session'
" NeoBundle 'sjl/vitality.vim'

" Load local plugins, nice for doing development
" execute 'NeoBundleLocal' '~/code/vim'

call plug#end()

filetype plugin indent on
syntax enable

" NeoBundleCheck

"===============================================================================
" Local Settings
"===============================================================================

try
  source ~/.vimrc.local
catch
endtry

"===============================================================================
" General Settings
"===============================================================================

" Set augroup
augroup MyAutoCmd
  autocmd!
augroup END

syntax on

" This took a while to figure out. Neocomplcache + iTerm + the CursorShape
" fix is causing the completion menu popup to flash the first result. Tested it
" with AutoComplPop and the behavior doesn't exist, so it's isolated to
" Neocomplcache... :( Dug into the source for both and saw that AutoComplPop is
" setting lazyredraw to be on during automatic popup...
" set lazyredraw

" Solid line for vsplit separator
set fcs=vert:│

" Turn on the mouse, since it doesn't play well with tmux anyway. This way I can
" scroll in the terminal
set mouse=a

" Give one virtual space at end of line
set virtualedit=onemore

" Turn on line number
set number

" Always splits to the right and below
set splitright
set splitbelow

" 256bit terminal
set t_Co=256

" Boost performance of rendering long lines
set synmaxcol=200

" Colorscheme
" colorscheme jellybeans
let g:seoul256_background = 234
colorscheme seoul256

" Tell Vim to use dark background
set background=dark

" Sets how many lines of history vim has to remember
set history=10000

" Set to auto read when a file is changed from the outside
set autoread

" Set to auto write file
set autowriteall

" Display unprintable chars
set list
set listchars=tab:▸\ ,extends:❯,precedes:❮,nbsp:␣
set showbreak=↪

" listchar=trail is not as flexible, use the below to highlight trailing
" whitespace. Don't do it for unite windows or readonly files
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
augroup MyAutoCmd
  autocmd BufWinEnter * if &modifiable && &ft!='unite' | match ExtraWhitespace /\s\+$/ | endif
  autocmd InsertEnter * if &modifiable && &ft!='unite' | match ExtraWhitespace /\s\+\%#\@<!$/ | endif
  autocmd InsertLeave * if &modifiable && &ft!='unite' | match ExtraWhitespace /\s\+$/ | endif
  autocmd BufWinLeave * if &modifiable && &ft!='unite' | call clearmatches() | endif
augroup END

" Minimal number of screen lines to keep above and below the cursor
set scrolloff=10

" How many lines to scroll at a time, make scrolling appears faster
set scrolljump=3

" Min width of the number column to the left
set numberwidth=1

" Open all folds initially
set foldmethod=indent
set foldlevelstart=99

" No need to show mode
set noshowmode

" Auto complete setting
set completeopt=longest,menuone

set wildmode=list:longest,full
set wildmenu "turn on wild menu
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif
set wildignore+=*.so,*.swp,*.zip,*/.Trash/**,*.pdf,*.dmg,*/Library/**,*/.rbenv/**
set wildignore+=*/.nx/**,*.app

" Allow changing buffer without saving it first
set hidden

" Set backspace config
set backspace=eol,start,indent

" Case insensitive search
set ignorecase
set smartcase

" Set sensible heights for splits
set winheight=50
" Setting this causes problems with Unite-outline. Don't really need it
" set winminheight=5

" Make search act like search in modern browsers
set incsearch

" Make regex a little easier to type
set magic

" Don't show matching brackets
set noshowmatch

" Show incomplete commands
set showcmd

" Turn off sound
set vb
set t_vb=

" Always show the statusline
set laststatus=2

" Explicitly set encoding to utf-8
set encoding=utf-8

" Column width indicator
set colorcolumn=+1

" Lower the delay of escaping out of other modes
" set timeout timeoutlen=1000 ttimeoutlen=1
set timeout timeoutlen=200 ttimeoutlen=1

" Fix meta-keys which generate <Esc>A .. <Esc>z
if !has('gui_running')
  " let c='a'
  " while c <= 'z'
  " exec "set <M-".c.">=\e".c
  " exec "imap \e".c." <M-".c.">"
  " let c = nr2char(1+char2nr(c))
  " endw
  " Map these two on its own to enable Alt-Shift-J and Alt-Shift-K. If I map the
  " whole spectrum of A-Z, it screws up mouse scrolling somehow. Mouse events
  " must be interpreted as some form of escape sequence that interferes.
  " exec 'set <M-J>=J'
  " exec 'set <M-K>=K'
endif

" Reload vimrc when edited
autocmd MyAutoCmd BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc
      \ so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif

try
  lang en_us
catch
endtry

" Turn backup off
set nobackup
set nowritebackup
set noswapfile

" Tab settings
set expandtab
set shiftwidth=2
set tabstop=8
set softtabstop=2
set smarttab

" Text display settings
set linebreak
set textwidth=80
set autoindent
set nowrap
set whichwrap+=h,l,<,>,[,]

" Writes to the unnamed register also writes to the * and + registers. This
" makes it easy to interact with the system clipboard
if has ('unnamedplus')
  set clipboard=unnamedplus
else
  set clipboard=unnamed
endif

" Spelling highlights. Use underline in term to prevent cursorline highlights
" from interfering
if !has("gui_running")
  hi clear SpellBad
  hi SpellBad cterm=underline ctermfg=red
  hi clear SpellCap
  hi SpellCap cterm=underline ctermfg=blue
  hi clear SpellLocal
  hi SpellLocal cterm=underline ctermfg=blue
  hi clear SpellRare
  hi SpellRare cterm=underline ctermfg=blue
endif

" Use a low updatetime. This is used by CursorHold
set updatetime=1000

" I like my word boundary to be a little bigger than the default
" FIXME Apparently this affects html indenting. Figure out what the problem is
" set iskeyword+=<,>,[,],:,-,`,!
" set iskeyword-=_

" Cursor settings. This makes terminal vim sooo much nicer!
" Tmux will only forward escape sequences to the terminal if surrounded by a DCS
" sequence
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

"===============================================================================
" Function Key Mappings
"===============================================================================

" <F1>: Help
nmap <F1> [unite]h

" <F2>: Open Vimfiler

" <F3>: Gundo
nnoremap <F3> :<C-u>GundoToggle<CR>

" <F4>: Save session
nnoremap <F4> :<C-u>UniteSessionSave

" <F5>: Toggle indent guide
nnoremap <F5> :<C-u>IndentGuidesToggle<CR>

"===============================================================================
" Leader Key Mappings
"===============================================================================

" Map leader and localleader key to comma
let mapleader = ","
let g:mapleader = ","
let maplocalleader = ","
let g:maplocalleader = ","

" <Leader>``: Force quit all
nnoremap <Leader>`` :qa!<cr>

" <Leader>1: Toggle between paste mode
nnoremap <silent> <Leader>1 :set paste!<cr>

" <Leader>2: Toggle Tagbar
nnoremap <silent> <Leader>2 :TagbarToggle<cr>

" <Leader>0: Run the visually selected code in python and replace it with the
" output
vnoremap <silent> <Leader>0 :!python<cr>

" <Leader>tab: Toggles NERDTree
" nnoremap <silent> <Leader><tab> :NERDTreeToggle<cr>

" <Leader>q: Quit all, very useful in vimdiff
nnoremap <Leader>q :qa<cr>

" <Leader>w: Close current buffer
nnoremap <Leader>w :NERDTreeClose<cr>:bdelete<cr>

" <Leader>e: Fast editing of the .vimrc
nnoremap <Leader>e :e! ~/.dotfiles/.vimrc<cr>

" <Leader>r: QuickRun's default keymap

" <Leader>t: TODO

" <Leader>y: TODO

" <Leader>u: TODO

" <Leader>o: only
nnoremap <Leader>o :only<cr>

" <Leader>p: Copy the full path of the current file to the clipboard
nnoremap <silent> <Leader>p :let @+=expand("%:p")<cr>:echo "Copied current file
      \ path '".expand("%:p")."' to clipboard"<cr>

" <Leader>a: TODO

" <Leader>s: Spell checking shortcuts
nnoremap <Leader>ss :setlocal spell!<cr>
nnoremap <Leader>sj ]s
nnoremap <Leader>sk [s
nnoremap <Leader>sa zg]s
nnoremap <Leader>sd 1z=
nnoremap <Leader>sf z=

" <Leader>d: TODO

" <Leader>f: Open Quickfix
nnoremap <silent> <Leader>f :botright copen<CR>

" <Leader>g: Fugitive shortcuts

" <Leader>z: TODO

" <Leader>x: TODO

" <Leader>c*: NERDCommenter mappings
" <Leader>cd: Switch to the directory of the open buffer
nnoremap <Leader>cd :cd %:p:h<cr>:pwd<cr>

" <Leader>v: TODO

" <Leader>b: TODO

" <Leader>n: NERDTreeFind
nnoremap <silent> <Leader>n :NERDTreeFind<cr> :wincmd p<cr>

" <Leader>m: Maximize current split
nnoremap <Leader>m <C-w>_<C-w><Bar>

" <Leader><space>: TODO

" <Leader>,: Switch to previous split
nnoremap <Leader>, <C-w>p

"===============================================================================
" Command-line Mode Key Mappings
"===============================================================================

" Bash like keys for the command line. These resemble personal zsh mappings
cnoremap <c-a> <home>
cnoremap <c-e> <end>

" Ctrl-[hl]: Move left/right by word
cnoremap <c-h> <s-left>
cnoremap <c-l> <s-right>

" Ctrl-Space: Show history
cnoremap <c-@> <c-f>

cnoremap <c-j> <down>
cnoremap <c-k> <up>
cnoremap <c-f> <left>
cnoremap <c-g> <right>

" Ctrl-v: Paste
cnoremap <c-v> <c-r>"

" w!: Change ro files to rw
" function! s:chmodonwrite()
" if v:cmdbang
" silent !chmod u+w %
" endif
" endfunction
" autocmd MyAutoCmd bufwrite * call s:chmodonwrite()

" w!!: Writes using sudo
cnoremap w!! w !sudo tee % >/dev/null

autocmd MyAutoCmd CmdwinEnter : map <buffer> <cr> <cr>

"===============================================================================
" Normal Mode Shift Key Mappings
"===============================================================================

" Shift-Tab: NERDTree
nnoremap <silent> <S-Tab> :NERDTreeToggle<CR>

" Q: Closes the window
nnoremap Q :q<cr>

" W: Save
nnoremap W :w<cr>

" E: Move to end of word forward

" R: Reindent entire file
nnoremap R mqHmwgg=G`wzt`q

" T: Finds till backwards

" Y: Remove join lines to this, Y looks like a join of two lines into one
noremap Y J

" U: Redos since 'u' undos
nnoremap U :redo<cr>

" I: Insert at beginning of line

" O: Insert line above

" P: Paste above line

" {: Beginning of paragraph

" }: End of paragraph

" _ : Quick horizontal splits
nnoremap _ :sp<cr>

" | : Quick vertical splits
nnoremap <bar> :vsp<cr>

" A: Insert at end of line

" S: Vim-seek backward

" D: Deletes til the end of line

" F: Finds backwards

" G: Go to end of file

" H: Go to beginning of line.
noremap H ^

" J: expand-region
map K <Plug>(expand_region_expand)

" K: shrink-region
map J <Plug>(expand_region_shrink)

noremap L g_

" :: Remap to ,. After all the remapping, ; goes to command mode, . repeats
" fFtT, : repeats it backward, and , is the leader
noremap : ,

" ": Handles registers

" Z: Bufsurf back
nnoremap <silent> Z :BufSurfBack<CR>

" X: Bufsurf forward
nnoremap <silent> X :BufSurfForward<CR>

" C: Deletes rest of line and go to insert mode

" V: Visual line mode

" B: Move word backward (TODO Replaced by <C-H>, maybe remap?)

" N: Find next occurrence backward
nnoremap N Nzzzv

" M: Move cursor to mid screen (When was the last time I actually used this?)

" <: Indent left

" >: Indent right

" ?: Search backwards

" +/-: Increment number
nnoremap + <c-a>
nnoremap - <c-x>

"===============================================================================
" Normal Mode Ctrl Key Mappings
"===============================================================================

" Ctrl-q: Visual block mode

" Ctrl-w: Window management

" Ctrl-e: Find (e)verything
nmap <c-e> [unite]f

" Ctrl-r: Command history using Unite, this matches my muscle memory in zsh
silent! nunmap <c-r>
nmap <c-r> [unite];

" Ctrl-t: TODO

" Ctrl-t*: Tab operations (When was the last time I used tabs?)
" nnoremap <c-t><c-n> :tabnew<cr>
" nnoremap <c-t><c-w> :tabclose<cr>
" nnoremap <c-t><c-j> :tabprev<cr>
" nnoremap <c-t><c-h> :tabprev<cr>
" nnoremap <c-t><c-k> :tabnext<cr>
" nnoremap <c-t><c-l> :tabnext<cr>
" let g:lasttab = 1
" nnoremap <c-t><c-t> :exe "tabn ".g:lasttab<cr>
" autocmd MyAutoCmd TabLeave * let g:lasttab = tabpagenr()

" Ctrl-y: Yanks
nmap <c-y> [unite]y

" Ctrl-u: Scroll half a screen up smoothly
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 5, 1)<CR>

" Ctrl-i: Go forward in the jumplist, also realigns screen. See mapping for
" <M-s>

" Ctrl-o: Go back in the jumplist, also realign the screen
" nnoremap <c-o> <c-o>zzzv

" Ctrl-p: Find MRU and buffers
nmap <c-p> [unite]u

" Ctrl-[: Esc

" Ctrl-]: Go forward in tag stack

" Ctrl-\: Quick outline
nmap <silent> <c-\> [unite]o

" Ctrl-a*: Dispatch related
nnoremap <c-a><c-a> :Dispatch<CR>
nnoremap <c-a><c-d> :Dispatch 

" Ctrl-sa: Reopen last grep window
nnoremap <c-s><c-a> :UniteResume -buffer-name=grep<CR>
" Ctrl-ss: (S)earch word under cur(s)or in current directory
nnoremap <c-s><c-s> :Unite -buffer-name=grep grep:.::<C-r><C-w><CR>
" Ctrl-sd: (S)earch word in current (d)irectory (prompt for word)
nnoremap <c-s><c-d> :Unite -buffer-name=grep grep:.<CR>
" Ctrl-sf: Quickly (s)earch in (f)ile
nmap <c-s><c-f> [unite]l
" Ctrl-sr: Easier (s)earch and (r)eplace
nnoremap <c-s><c-r> :%s/<c-r><c-w>//gc<left><left><left>
" Ctrl-sw: Quickly surround word
nmap <c-s><c-w> ysiw

" Ctrl-d: Scroll half a screen down smoothly
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 5, 1)<CR>

" Ctrl-f: fzf
nnoremap <c-f> :FZF --no-mouse .<CR>

" Ctrl-g: Prints current file name (TODO Not very useful)
nnoremap <c-g> 1<c-g>

" Ctrl-h: Move word back. Consistent with zsh
noremap <c-h> b
inoremap <c-h> <c-o>b

" Ctrl-j: Scroll + move down through the file
" noremap <c-j> 3<c-e>3j
noremap <c-j> 3<c-e>

" Ctrl-k: Scroll + move up through the file
" noremap <c-k> 3<c-y>3k
noremap <c-k> 3<c-y>

" Ctrl-l: Move word forward. Consistent with zsh
noremap <c-l> w
inoremap <c-l> <c-o>w

" Ctrl-;: Vim can't map this (TODO We could map this through iTerm2)

" Ctrl-': Vim can't map this (TODO We could map this through iTerm2)

" Ctrl-z: This is the command key for tmux

" Ctrl-x: Cycle through the splits. I don't ever use enough splits to justify
" wasting 4 very easy to hit keys for them.
nnoremap <c-x> <c-w>w

" Ctrl-c: (C)hange (c)urrent directory
nmap <c-c> [unite]d

" Ctrl-v: Paste (works with system clipboard due to clipboard setting earlier)
nnoremap <c-v> p

" Ctrl-b: Go (b)ack. Go to previously buffer
nnoremap <c-b> <c-^>

" Ctrl-n: Next cursor in MultiCursor mode

" Ctrl-m: Same as Enter

" Ctrl-,: Vim can't map this

" Ctrl-.: Vim can't map this

" Ctrl-/: A more powerful '/'
nmap <c-_> [unite]l

" Ctrl-Space: Quick scratch buffer
nmap <C-@> <Plug>(scratch-open)
nmap <C-Space> <C-@>

"===============================================================================
" Insert Mode Ctrl Key Mappings
"===============================================================================

" Ctrl-q: Quoted insert. Useful for doing key binding

" Ctrl-w: Delete previous word, create undo point
inoremap <c-w> <c-g>u<c-w>

" Ctrl-e: Go to end of line
inoremap <c-e> <esc>A

" Ctrl-r: Insert register

" Ctrl-t: Indent shiftwidth

" Ctrl-y: Insert char above cursor
" TODO: When do I ever use this?

" Ctrl-u: Delete til beginning of line, create undo point
inoremap <c-u> <c-g>u<c-u>

" Ctrl-i: Tab

" Ctrl-o: Execute one normal mode command

" Ctrl-p: Auto complete previous
" TODO: When do I ever use this?

" Ctrl-a: Go to begin of line
inoremap <c-a> <esc>I

" Ctrl-s: Save
inoremap <c-s> <esc>:w<CR>

" Ctrl-d: Unindent shiftwidth

" Ctrl-f: Move cursor left
inoremap <c-f> <Left>

" Ctrl-g: Move cursor right
" Surround.vim maps these things that I don't use
augroup MyAutoCmd
  autocmd VimEnter * silent! iunmap <C-G>s
  autocmd VimEnter * silent! iunmap <C-G>S
  autocmd BufEnter * silent! iunmap <buffer> <C-G>g
augroup END
inoremap <c-g> <Right>

" Ctrl-h: Move word left
inoremap <c-h> <c-o>b

" Ctrl-j: Move cursor up
inoremap <expr> <c-j> pumvisible() ? "\<C-e>\<Down>" : "\<Down>"

" Ctrl-k: Move cursor up
inoremap <expr> <c-k> pumvisible() ? "\<C-e>\<Up>" : "\<Up>"

" Ctrl-l: Move word right
inoremap <c-l> <c-o>w

" Ctrl-z: This is the command key for tmux

" Ctrl-x: Delete char under cursor. (If we simply use x, it wouldn't delete
" newline chars
" inoremap <c-x> <right><c-o>X

" Ctrl-c: Inserts line below
inoremap <c-c> <c-o>o

" Shift-Enter: Inserts line below. iTerm sends Alt-\ for Shift-Enter. HACK!!!
" inoremap \ <c-o>o

" Ctrl-v: Paste. For some reason, <c-o> is not creating an undo point in the
" mapping
inoremap <c-v> <c-g>u<c-o>gP

" Ctrl-b: TODO

" Ctrl-n: Auto complete next

" Ctrl-m: Same as Enter

" Ctrl-space: TODO

" Ctrl-/: Undo
inoremap <c-_> <c-o>u

"===============================================================================
" Visual Mode Ctrl Key Mappings
"===============================================================================

" Ctrl-c: Copy (works with system clipboard due to clipboard setting)
vnoremap <c-c> y`]

" Ctrl-r: Easier search and replace
vnoremap <c-r> "hy:%s/<c-r>h//gc<left><left><left>

" Ctrl-s: Easier substitue
vnoremap <c-s> :s/\%V//g<left><left><left>

" Ctrl-f: Find with MultipleCursors
vnoremap <c-f> :MultipleCursorsFind 

"===============================================================================
" Normal Mode Meta Key Mappings
"===============================================================================

" Alt-a: Select all
nnoremap <silent> a :keepjumps normal ggVG<CR>

" Alt-s: Go back in changelist. HACK ALERT! Ctrl-i generates s with iTerm2
nnoremap s <c-i>

" Alt-h: Go to previous buffer
nnoremap <silent> h :bprevious<CR>

" Alt-j: Move current line down
" nnoremap <silent> j mz:m+<cr>`z==

" Alt-k: Move current line up
" nnoremap <silent> k mz:m-2<cr>`z==

" Alt-l: Go to next buffer
nnoremap <silent> l :bnext<CR>

" Alt-Shift-j: Duplicate line down
nnoremap <silent> J mzyyp`zj

" Alt-Shift-k: Duplicate line up
nnoremap <silent> K mzyyp`z

" Alt-o: Jump back in the changelist
nnoremap o g;

" Alt-i: Jump forward in the changelist
nnoremap i g,

" Alt-n: Open new tmux window

"===============================================================================
" Insert Mode Meta Key Mappings
"===============================================================================

" Alt-j: Move current line down
" imap <m-j> <esc><m-j>a
" imap j <esc><m-j>a

" Alt-k: Move current line down
" imap <m-k> <esc><m-k>a
" imap k <esc><m-k>a

"===============================================================================
" Visual Mode Meta Key Mappings
"===============================================================================

" Alt-j: Move selections down
" vnoremap <m-j> :m'>+<cr>`<my`>mzgv`yo`z
" vnoremap j :m'>+<cr>`<my`>mzgv`yo`z

" Alt-k: Move selections up
" vnoremap <m-k> :m'<-2<cr>`>my`<mzgv`yo`z
" vnoremap k :m'<-2<cr>`>my`<mzgv`yo`z

"===============================================================================
" Space Key Mappings
"===============================================================================

" Space is also the leader key for Unite actions
" Space-[jk] scrolls the page
call submode#enter_with('scroll', 'n', '', '<space>j', ':call smooth_scroll#down(&scroll/2, 5, 1)<CR>')
call submode#enter_with('scroll', 'n', '', '<space>k', ':call smooth_scroll#up(&scroll/2, 5, 1)<CR>')
call submode#map('scroll', 'n', '', 'j', ':call smooth_scroll#down(&scroll/2, 5, 1)<CR>')
call submode#map('scroll', 'n', '', 'k', ':call smooth_scroll#up(&scroll/2, 5, 1)<CR>')

" Don't leave submode automatically
let g:submode_timeout = 0

" Space-=: Resize windows
nnoremap <space>= <c-w>=

"===============================================================================
" Arpeggio Mappings
"===============================================================================

" call arpeggio#load()
" Arpeggioimap fj <Esc>

"===============================================================================
" Normal Mode Key Mappings
"===============================================================================

" q: Record macros
" w: Move word forward
" e: Move to end of word
" r: Replace single character
" t: Find till
" y: Yank
" u: Undo
" i: Insert before cursor
" o: Insert line below cursor
" p: Paste
nnoremap p gp
" [: Many functions
" ]: Many functions
" \: Toggle comment
nmap \ <Leader>c<space>
" a: Insert after cursor
" s: Substitute
" d: Delete into the blackhole register to not clobber the last yank
nnoremap d "_d
" dd: I use this often to yank a single line, retain its original behavior
nnoremap dd dd
" f: Find. Also support repeating with .
nnoremap <Plug>OriginalSemicolon ;
" FIXME
nnoremap <silent> f :<C-u>call repeat#set("\<lt>Plug>OriginalSemicolon")<CR>f
nnoremap <silent> t :<C-u>call repeat#set("\<lt>Plug>OriginalSemicolon")<CR>t
nnoremap <silent> F :<C-u>call repeat#set("\<lt>Plug>OriginalSemicolon")<CR>F
nnoremap <silent> T :<C-u>call repeat#set("\<lt>Plug>OriginalSemicolon")<CR>T
" g: Many functions
" gp to visually select pasted text
nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'
" h: Left
" j: Down
" k: Up
" l: Right
" ;: Command mode
noremap ; :
" ': Go to mark
" z: Many functions
" x: Delete char
" c: Change into the blackhole register to not clobber the last yank
nnoremap c "_c
" v: Visual mode
" b: Move word backward
" n: Next, keep search matches in the middle of the window
nnoremap n nzzzv
" m: Marks
" ,: Leader
" .: Repeat last command
" /" Search
" Up Down Left Right resize splits
nnoremap <up> <c-w>+
nnoremap <down> <c-w>-
nnoremap <left> <c-w><
nnoremap <right> <c-w>>

" Enter: Highlight cursor location
nnoremap <silent> <cr> :call CursorPing()<CR>

" Backspace: Toggle search highlight
nnoremap <bs> :set hlsearch! hlsearch?<cr>

" Tab: Go to matching element
nnoremap <Tab> %

"===============================================================================
" Visual Mode Key Mappings
"===============================================================================

" y: Yank and go to end of selection
xnoremap y y`]

" p: Paste in visual mode should not replace the default register with the
" deleted text
xnoremap p "_dP

" d: Delete into the blackhole register to not clobber the last yank. To 'cut',
" use 'x' instead
xnoremap d "_d

" \: Toggle comment
xmap \ <Leader>c<space>

" Enter: Highlight visual selections
xnoremap <silent> <CR> y:let @/ = @"<cr>:set hlsearch<cr>

" Backspace: Delete selected and go into insert mode
xnoremap <bs> c

" Space: QuickRun
xnoremap <space> :QuickRun<CR>

" <|>: Reselect visual block after indent
xnoremap < <gv
xnoremap > >gv

" .: repeats the last command on every line
xnoremap . :normal.<cr>

" @: repeats macro on every line
xnoremap @ :normal@

" Tab: Indent
xmap <Tab> >

" shift-tab: unindent
xmap <s-tab> <

"===============================================================================
" Operator Pending Mode Key Mappings
"===============================================================================

"===============================================================================
" Autocommands
"===============================================================================

" Turn on cursorline only on active window
" Cursorline makes things REALLY slow for me. Especially moving left and right
" on the same line when syntax highlight is on.
" http://briancarper.net/blog/590/cursorcolumn--cursorline-slowdown
augroup MyAutoCmd
  " autocmd WinLeave * setlocal nocursorline
  " autocmd WinEnter,BufRead * setlocal cursorline
augroup END

function! CursorPing()
  set cursorline cursorcolumn
  redraw
  sleep 200m
  set nocursorline nocursorcolumn
endfunction

" q quits in certain page types. Don't map esc, that interferes with mouse input
autocmd MyAutoCmd FileType help,quickrun
      \ if (!&modifiable || &ft==#'quickrun') |
      \ nnoremap <silent> <buffer> q :q<cr>|
      \ nnoremap <silent> <buffer> <esc><esc> :q<cr>|
      \ endif
autocmd MyAutoCmd FileType qf nnoremap <silent> <buffer> q :q<CR>

" json = javascript syntax highlight
autocmd MyAutoCmd FileType json setlocal syntax=javascript

" Enable omni completion
set omnifunc=syntaxcomplete#Complete
augroup MyAutoCmd
  " autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  " autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  " autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  " autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  " autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
  " autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
  " autocmd FileType java setlocal omnifunc=eclim#java#complete#CodeComplete
  autocmd FileType ruby let b:dispatch = 'rspec %'
augroup END

" Diff mode settings
" au MyAutoCmd FilterWritePre * if &diff | exe 'nnoremap <c-p> [c' | exe 'nnoremap <c-n> ]c' | endif
" Quickfix
autocmd MyAutoCmd FileType qf call AdjustWindowHeight(3, 50)
function! AdjustWindowHeight(minheight, maxheight)
  exe max([min([line("$"), a:maxheight]), a:minheight]) . "wincmd _"
endfunction

"===============================================================================
" NERDTree
"===============================================================================

let NERDTreeShowBookmarks=1
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\~$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
" Close vim if the only window open is nerdtree
autocmd MyAutoCmd BufEnter * 
      \ if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"===============================================================================
" NERDCommenter
"===============================================================================

" Always leave a space between the comment character and the comment
let NERDSpaceDelims=1

"===============================================================================
" Syntastic
"===============================================================================

" TODO(terryma): Update these settings
" Syntastic settings
let g:syntastic_mode_map = { 'mode': 'active',
      \ 'active_filetypes': ['ruby', 'php'],
      \ 'passive_filetypes': ['puppet'] }

"===============================================================================
" Fugitive
"===============================================================================

nnoremap <Leader>gb :Gblame<cr>
nnoremap <Leader>gc :Gcommit<cr>
nnoremap <Leader>gd :Gdiff<cr>
nnoremap <Leader>gp :Git push<cr>
nnoremap <Leader>gr :Gremove<cr>
nnoremap <Leader>gs :Gstatus<cr>
nnoremap <Leader>gw :Gwrite<cr>
" Quickly stage, commit, and push the current file. Useful for editing .vimrc
nnoremap <Leader>gg :Gwrite<cr>:Gcommit -m 'update'<cr>:Git push<cr>

"===============================================================================
" EasyMotion
"===============================================================================

" Tweak the colors
" hi link EasyMotionTarget WarningMsg
" hi link EasyMotionShade  Comment

let g:EasyMotion_do_mapping = 0
" nnoremap <silent> <C-f>f :call EasyMotion#F(0, 0)<CR>
" nnoremap <silent> <C-f><C-f> :call EasyMotion#F(0, 1)<CR>
" nnoremap <silent> <C-f>t :call EasyMotion#T(0, 0)<CR>
" nnoremap <silent> <C-f><C-t> :call EasyMotion#T(0, 1)<CR>
" nnoremap <silent> <C-f> :call EasyMotion#F(0, 0)<CR>
" nnoremap <silent> <C-t> :call EasyMotion#T(0, 0)<CR>
" map f <Plug>(easymotion-f)
" map t <Plug>(easymotion-t)
" map F <Plug>(easymotion-F)
" map T <Plug>(easymotion-T)
nmap s <Plug>(easymotion-s2)

let g:EasyMotion_smartcase = 1
map / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map n <Plug>(easymotion-next)
map N <Plug>(easymotion-prev)

"===============================================================================
" Neocomplete
"===============================================================================

" Use neocomplete
" let g:neocomplete#enable_at_startup = 1
" Use smartcase
" let g:neocomplete#enable_smart_case = 1
" Set mininum syntax keyword length
" let g:neocomplete#sources#syntax#min_keyword_length = 3

" Recommended key-mappings.
" <CR>: close popup and save indent.
" inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
" function! s:my_cr_function()
  " return neocomplete#close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
" endfunction
" <TAB>: completion.
" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
" inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
" inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" inoremap <expr><C-y>  neocomplete#close_popup()
" inoremap <expr><C-e>  neocomplete#cancel_popup()
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"


"===============================================================================
" Neocomplcache and Neosnippets
"===============================================================================

" Launches neocomplcache automatically on vim startup.
" let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
" let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
" let g:neocomplcache_enable_camel_case_completion = 1
" Use underscore completion.
" let g:neocomplcache_enable_underbar_completion = 1
" Sets minimum char length of syntax keyword.
" let g:neocomplcache_min_syntax_length = 4
" let g:neocomplcache_min_keyword_length = 4
" AutoComplPop like behavior.
" let g:neocomplcache_enable_auto_select = 1
" let g:snips_author = "Terry Ma"
" let g:neocomplcache_max_list=10
" <Tab>'s function is overloaded depending on the context:
" - If the current word is a snippet, then expand that snippet
" - If we're in the middle of a snippet, tab jumps to the next placeholder text
" - If the competion menu is visible, enter the currently selected entry and
"   close the popup
" - If none of the above is true, simply do what <Tab> does originally
" imap <expr><TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? neocomplcache#close_popup() : "\<TAB>"
" smap <expr><TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" Enter always performs a literal enter
" imap <expr><cr> neocomplcache#smart_close_popup() . "\<CR>"

" if has('conceal')
" set conceallevel=2 concealcursor=i
" endif

" Tell Neosnippets to use the snipmate snippets
" let g:neosnippet#snippets_directory='~/.dotfiles/.vim/bundle/snipmate-snippets,~/.dotfiles/.vim/snippets'

" These are the battle scars of me trying to get omni_patterns to work correctly
" so Neocomplcache and Eclim could co-exist peacefully. No cigar.
" if !exists('g:neocomplcache_force_omni_patterns')
" let g:neocomplcache_force_omni_patterns = {}
" endif
" if !exists('g:neocomplcache_omni_patterns')
" let g:neocomplcache_omni_patterns = {}
" endif
" let g:neocomplcache_force_omni_patterns.java = '\%(\.\)\h\w*'
" let g:neocomplcache_force_omni_patterns.java = '.'
" let g:neocomplcache_omni_patterns.java = '\%(\.\)\h\w*'

" Ok this requires some explanation. I couldn't get Neocomplcache and Eclim to
" play nice with each other. When Neocomplcache triggers omni_complete under
" Eclim, everything just blows up. I tried to configure omni_patterns using
" Neocomplcache, but nothing I tried worked. What eventually worked is disabling
" omni_complete from the Neocomplcache sources for java files, and trigger it
" manually with Ctrl-Space. Neocomplcache also has this strange behavior where
" it overrides the completeopt flag to always remove 'longest'. In order for
" Ctrl-Space to trigger sane behavior of autocomplete and not always select the
" first entry by default, I need to temporarily set completeopt to include
" longest when the key is triggered. Theoratically I could call
" neocomplcache#start_manual_complete, but I think that requires the
" omni_patterns to set correctly and I couldn't get that to work
" function! s:disable_neocomplcache_for_java()
" if &ft ==# 'java'
" :NeoComplCacheLockSource omni_complete
" inoremap <buffer> <c-@> <C-R>=<SID>java_omni_complete()<CR>
" endif
" endfunction

" function! s:java_omni_complete()
" setlocal completeopt+=longest
" return "\<C-X>\<C-O>"
" endfunction

" autocmd MyAutoCmd BufEnter * call s:disable_neocomplcache_for_java()

"===============================================================================
" Unite
"===============================================================================

" Use the fuzzy matcher for everything
call unite#filters#matcher_default#use(['matcher_fuzzy'])
" Use the rank sorter for everything
" call unite#filters#sorter_default#use(['sorter_rank'])

" Set up some custom ignores
call unite#custom_source('file_rec,file_rec/async,file_mru,file,buffer,grep',
      \ 'ignore_pattern', join([
      \ '\.git/',
      \ 'git5/.*/review/',
      \ 'google/obj/',
      \ 'tmp/',
      \ '.sass-cache',
      \ 'node_modules/',
      \ 'bower_components/',
      \ 'dist/',
      \ '.git5_specs/',
      \ '.pyc',
      \ ], '\|'))

" Map space to the prefix for Unite
nnoremap [unite] <Nop>
nmap <space> [unite]

" General fuzzy search
nnoremap <silent> [unite]<space> :<C-u>Unite
      \ -buffer-name=files buffer file_mru bookmark file_rec/async<CR>

" Quick registers
nnoremap <silent> [unite]r :<C-u>Unite -buffer-name=register register<CR>

nnoremap <silent> [unite]u :<C-u>Unite -buffer-name=buffers file_mru buffer<CR>
" Quick buffer and mru

" Quick yank history
nnoremap <silent> [unite]y :<C-u>Unite -buffer-name=yanks history/yank<CR>

" Quick outline
nnoremap <silent> [unite]o :<C-u>Unite -buffer-name=outline -vertical outline<CR>

" Quick sessions (projects)
nnoremap <silent> [unite]p :<C-u>Unite -buffer-name=sessions session<CR>

" Quick sources
nnoremap <silent> [unite]a :<C-u>Unite -buffer-name=sources source<CR>

" Quick snippet
nnoremap <silent> [unite]s :<C-u>Unite -buffer-name=snippets ultisnips<CR>

" Quickly switch lcd
nnoremap <silent> [unite]d
      \ :<C-u>Unite -buffer-name=change-cwd -default-action=cd directory_mru directory_rec/async<CR>

" Quick file search
nnoremap <silent> [unite]f :<C-u>Unite -buffer-name=files file_rec/async file/new<CR>

" Quick grep from cwd
nnoremap <silent> [unite]g :<C-u>Unite -buffer-name=grep grep:.<CR>

" Quick help
nnoremap <silent> [unite]h :<C-u>Unite -buffer-name=help help<CR>

" Quick line using the word under cursor
" nnoremap <silent> [unite]l :<C-u>UniteWithCursorWord -buffer-name=search_file line<CR>

" Quick line
nnoremap <silent> [unite]l :<C-u>Unite -buffer-name=search_file line<CR>

" Quick MRU search
nnoremap <silent> [unite]m :<C-u>Unite -buffer-name=mru file_mru<CR>

" Quick find
nnoremap <silent> [unite]n :<C-u>Unite -buffer-name=find find:.<CR>

" Quick commands
nnoremap <silent> [unite]c :<C-u>Unite -buffer-name=commands command<CR>

" Quick bookmarks
nnoremap <silent> [unite]b :<C-u>Unite -buffer-name=bookmarks bookmark<CR>

" Fuzzy search from current buffer
" nnoremap <silent> [unite]b :<C-u>UniteWithBufferDir
" \ -buffer-name=files -prompt=%\  buffer file_mru bookmark file<CR>

" Quick commands
nnoremap <silent> [unite]; :<C-u>Unite -buffer-name=history -default-action=edit history/command command<CR>

" Custom Unite settings
autocmd MyAutoCmd FileType unite call s:unite_settings()
function! s:unite_settings()
  " nmap <buffer> <ESC> <Plug>(unite_exit)
  nmap <buffer> <ESC> <Plug>(unite_insert_enter)
  imap <buffer> <ESC> <Plug>(unite_exit)
  " imap <buffer> <c-j> <Plug>(unite_select_next_line)
  imap <buffer> <c-j> <Plug>(unite_insert_leave)
  nmap <buffer> <c-j> <Plug>(unite_loop_cursor_down)
  nmap <buffer> <c-k> <Plug>(unite_loop_cursor_up)
  nmap <buffer> <tab> <Plug>(unite_loop_cursor_down)
  nmap <buffer> <s-tab> <Plug>(unite_loop_cursor_up)
  imap <buffer> <c-a> <Plug>(unite_choose_action)
  imap <buffer> <Tab> <Plug>(unite_insert_leave)
  imap <buffer> jj <Plug>(unite_insert_leave)
  imap <buffer> <C-w> <Plug>(unite_delete_backward_word)
  imap <buffer> <C-u> <Plug>(unite_delete_backward_path)
  imap <buffer> '     <Plug>(unite_quick_match_default_action)
  nmap <buffer> '     <Plug>(unite_quick_match_default_action)
  nmap <buffer> <C-r> <Plug>(unite_redraw)
  imap <buffer> <C-r> <Plug>(unite_redraw)
  inoremap <silent><buffer><expr> <C-s> unite#do_action('split')
  nnoremap <silent><buffer><expr> <C-s> unite#do_action('split')
  inoremap <silent><buffer><expr> <C-v> unite#do_action('vsplit')
  nnoremap <silent><buffer><expr> <C-v> unite#do_action('vsplit')

  let unite = unite#get_current_unite()
  if unite.buffer_name =~# '^search'
    nnoremap <silent><buffer><expr> r     unite#do_action('replace')
  else
    nnoremap <silent><buffer><expr> r     unite#do_action('rename')
  endif

  nnoremap <silent><buffer><expr> cd     unite#do_action('lcd')

  " Using Ctrl-\ to trigger outline, so close it using the same keystroke
  if unite.buffer_name =~# '^outline'
    imap <buffer> <C-\> <Plug>(unite_exit)
  endif

  " Using Ctrl-/ to trigger line, close it using same keystroke
  if unite.buffer_name =~# '^search_file'
    imap <buffer> <C-_> <Plug>(unite_exit)
  endif
endfunction

" Start in insert mode
let g:unite_enable_start_insert = 1

let g:unite_data_directory = "~/.unite"

" Enable short source name in window
" let g:unite_enable_short_source_names = 1

" Enable history yank source
" let g:unite_source_history_yank_enable = 1

" Open in bottom right
let g:unite_split_rule = "botright"

" Shorten the default update date of 500ms
let g:unite_update_time = 200

let g:unite_source_file_mru_limit = 1000
let g:unite_cursor_line_highlight = 'TabLineSel'
" let g:unite_abbr_highlight = 'TabLine'

let g:unite_source_file_mru_filename_format = ':~:.'
let g:unite_source_file_mru_time_format = ''

" For ack.
if executable('ack-grep')
  let g:unite_source_grep_command = 'ack-grep'
  let g:unite_source_grep_default_opts = '-i --no-heading --no-color -a -H'
  let g:unite_source_grep_recursive_opt = ''
elseif executable('ack')
  let g:unite_source_grep_command = 'ack'
  let g:unite_source_grep_default_opts = '-i --no-heading --no-color -a -H'
  let g:unite_source_grep_recursive_opt = ''
endif

let g:unite_source_rec_max_cache_files = 99999


"===============================================================================
" Unite Sessions
"===============================================================================

" Save session automatically.
let g:unite_source_session_enable_auto_save = 1

" Pop up session selection if no file is specified
" TODO: Why does this not work when Vim isn't run from tmux???!
autocmd MyAutoCmd VimEnter * call s:unite_session_on_enter()
function! s:unite_session_on_enter()
  if !argc() && !exists("g:start_session_from_cmdline")
    Unite -buffer-name=sessions session
  endif
endfunction

"===============================================================================
" Vimfiler
"===============================================================================

" TODO Look into Vimfiler more
" Example at: https://github.com/hrsh7th/dotfiles/blob/master/vim/.vimrc
" nnoremap <expr><F2> g:my_open_explorer_command()
" function! g:my_open_explorer_command()
  " return printf(":\<C-u>VimFilerBufferDir -buffer-name=%s -split -auto-cd -toggle -no-quit -winwidth=%s\<CR>",
        " \ g:my_vimfiler_explorer_name,
        " \ g:my_vimfiler_winwidth)
" endfunction

" let g:vimfiler_as_default_explorer = 1
" let g:vimfiler_tree_leaf_icon = ' '
" let g:vimfiler_tree_opened_icon = '▾'
" let g:vimfiler_tree_closed_icon = '▸'
" " let g:vimfiler_file_icon = ' '
" let g:vimfiler_marked_file_icon = '✓'
" " let g:vimfiler_readonly_file_icon = ' '
" let g:my_vimfiler_explorer_name = 'explorer'
" let g:my_vimfiler_winwidth = 30
" let g:vimfiler_safe_mode_by_default = 0
" " let g:vimfiler_directory_display_top = 1

" autocmd MyAutoCmd FileType vimfiler call s:vimfiler_settings()
" function! s:vimfiler_settings()
  " nmap     <buffer><expr><CR>  vimfiler#smart_cursor_map("\<PLUG>(vimfiler_expand_tree)", "e")
" endfunction

"===============================================================================
" VimShell
"===============================================================================

let g:vimshell_prompt = "% "
let g:vimshell_user_prompt = 'fnamemodify(getcwd(), ":~")'
autocmd MyAutoCmd FileType vimshell call s:vimshell_settings()
function! s:vimshell_settings()
  call vimshell#altercmd#define('g', 'git')
endfunction

"===============================================================================
" QuickRun
"===============================================================================

let g:quickrun_config = {}
let g:quickrun_config['*'] = {
      \ 'runner/vimproc/updatetime' : 100,
      \ 'outputter' : 'buffer',
      \ 'runner' : 'vimproc',
      \ 'running_mark' : 'ﾊﾞﾝ（∩`･ω･）ﾊﾞﾝﾊﾞﾝﾊﾞﾝﾊﾞﾝﾞﾝ',
      \ 'into' : 1,
      \ 'runmode' : 'async:remote:vimproc'
      \}
" QuickRun triggers markdown preview
let g:quickrun_config.markdown = {
      \ 'runner': 'vimscript',
      \ 'command': ':InstantMarkdownPreview',
      \ 'exec': '%C',
      \ 'outputter': 'null'
      \}

"===============================================================================
" ScratchBuffer
"===============================================================================

autocmd MyAutoCmd User PluginScratchInitializeAfter
      \ call s:on_User_plugin_scratch_initialize_after()

function! s:on_User_plugin_scratch_initialize_after()
  map <buffer> <CR>  <Plug>(scratch-evaluate!)
endfunction
let g:scratch_show_command = 'hide buffer'

"===============================================================================
" Quickhl
"===============================================================================

let g:quickhl_colors = [
      \ "gui=bold ctermfg=255 ctermbg=153 guifg=#ffffff guibg=#0a7383",
      \ "gui=bold guibg=#a07040 guifg=#ffffff",
      \ "gui=bold guibg=#4070a0 guifg=#ffffff",
      \ ]

"===============================================================================
" Instant Markdown
"===============================================================================

" let g:instant_markdown_slow = 1
let g:instant_markdown_autostart = 0

"===============================================================================
" Markdown
"===============================================================================
" These are ammended on top of the existing markdown settings from
" tpope/vim-markdown
autocmd MyAutoCmd FileType markdown call s:markdown_settings()
function! s:markdown_settings()
  " Auto insert bullet when constructing lists
  setlocal comments=b:-
  setlocal formatoptions+=ro
  setlocal wrap
  setlocal tw=0
  inoremap <buffer> <Tab> <C-t>
  " Since completion is off, reassign tab and shift-tab to indent and unindent
  " in insert mode
  inoremap <buffer> <S-Tab> <C-d>
  " Make the delete key in insert mode delete the bullet point in 1 keystroke
  inoremap <silent> <buffer> <bs> <C-r>=<SID>markdown_delete_key()<CR>
endfunction

function! s:markdown_delete_key()
  if getline(".") =~ '^\s*- $'
    return "\<bs>\<bs>"
  else
    return "\<bs>"
  endif
endfunction

" Turn off completion, it's more disruptive than helpful
function! s:markdown_disable_autocomplete()
  if &ft ==# 'markdown'
    " :NeoComplCacheLock
  endif
endfunction
autocmd MyAutoCmd BufEnter * call s:markdown_disable_autocomplete()

"===============================================================================
" Go
"===============================================================================

autocmd MyAutoCmd FileType go
      \ setlocal nolist |
      \ setlocal softtabstop=8 |
      \ setlocal shiftwidth=8 |
      \ setlocal noexpandtab

"===============================================================================
" Expand Region
"===============================================================================

" This option currently isn't working :( Neosnippet is unmappion my
" select mode mappings, so if I switch buffer and come back, the mappings no
" longer work. Not sure how to solve that
" let g:expand_region_use_select_mode = 1
let g:expand_region_use_select_mode = 0

" Extend the global dictionary
call expand_region#custom_text_objects({
      \ 'a]'  :1,
      \ 'ab'  :1,
      \ 'aB'  :1,
      \ 'ii'  :0,
      \ 'ai'  :0,
      \ })

" Customize it further for ruby
call expand_region#custom_text_objects('ruby', {
      \ 'im' :0,
      \ 'am' :0,
      \ })

" Customize it further for html
call expand_region#custom_text_objects('html', {
      \ 'it' :1,
      \ })

"===============================================================================
" DelimitMate
"===============================================================================

autocmd MyAutoCmd FileType vim let b:delimitMate_quotes = "'"

let delimitMate_expand_cr = 1

"===============================================================================
" YCM
"===============================================================================

let g:ycm_confirm_extra_conf = 0
let g:EclimCompletionMethod = 'omnifunc'
let g:ycm_filetype_blacklist = {
      \ 'notes' : 1,
      \ 'markdown' : 1,
      \ 'text' : 1,
      \ 'unite' : 1
      \}

"===============================================================================
" UltiSnips
"===============================================================================

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" Make UltiSnips works nicely with YCM
function! g:UltiSnips_Complete()
  call UltiSnips#ExpandSnippet()
  if g:ulti_expand_res == 0
    if pumvisible()
      return "\<C-n>"
    else
      call UltiSnips#JumpForwards()
      if g:ulti_jump_forwards_res == 0
        return "\<TAB>"
      endif
    endif
  endif
  return ""
endfunction

au BufEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"

"===============================================================================
" Jekyll
"===============================================================================

let g:jekyll_post_extension = '.md'

"===============================================================================
" Airline
"===============================================================================

let g:airline_powerline_fonts = 1
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#fnamemod = ':t'

"===============================================================================
" TagBar
"===============================================================================

let g:tagbar_type_coffee = {
    \ 'ctagstype' : 'coffee',
    \ 'kinds'     : [
        \ 'c:classes',
        \ 'm:methods',
        \ 'f:functions',
        \ 'v:variables',
        \ 'f:fields',
    \ ]
\ }

"===============================================================================
" HTML Indent
"===============================================================================

let g:html_indent_inctags = "html,body,head,tbody"

"===============================================================================
" tmux-complete
"===============================================================================

" let g:tmuxcomplete#trigger = ''

"===============================================================================
" My functions
"===============================================================================

command! -nargs=+ Silent
      \ | execute ':silent !'.<q-args>
      \ | execute ':redraw!'

" Format json using python. This needs some better error checking
command! -nargs=0 -range=% Format 
      \ <line1>,<line2>!python -c "import sys, json, collections; print json.dumps(json.load(sys.stdin, object_pairs_hook=collections.OrderedDict), sort_keys=False, indent=2)"

" Execute 'cmd' while redirecting output.
" Delete all lines that do not match regex 'filter' (if not empty).
" Delete any blank lines.
" Delete '<whitespace><number>:<whitespace>' from start of each line.
" Display result in a scratch buffer.
function! s:Filter_lines(cmd, filter)
  let save_more = &more
  set nomore
  redir => lines
  silent execute a:cmd
  redir END
  let &more = save_more
  new
  setlocal buftype=nofile bufhidden=hide noswapfile
  put =lines
  g/^\s*$/d
  %s/^\s*\d\+:\s*//e
  if !empty(a:filter)
    execute 'v/' . a:filter . '/d'
  endif
  0
endfunction
command! -nargs=? Scriptnames call s:Filter_lines('scriptnames', <q-args>)
