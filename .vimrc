set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

""" LANGUAGES
Plugin 'wting/rust.vim'
Plugin 'honza/dockerfile.vim'
Plugin 'fatih/vim-go'
Plugin 'cespare/vim-toml'
Plugin 'jimenezrick/vimerl'
Plugin 'edklev/erlang-motions.vim'
Plugin 'yosssi/vim-ace'
Plugin 'vim-ruby/vim-ruby'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'slim-template/vim-slim'

""" IDE THINGS
Plugin 'tpope/vim-surround'
Plugin 'SirVer/ultisnips'
    let g:UltiSnipsExpandTrigger="<tab>"
    let g:UltiSnipsJumpForwardTrigger="<c-b>"
    let g:UltiSnipsJumpBackwardTrigger="<c-z>"
Plugin 'scrooloose/syntastic' " Syntax highlighting
Plugin 'vim-scripts/SyntaxRange' 	 " Allow ranges within a file to define different syntax mappings
Plugin 'scrooloose/nerdcommenter'
Plugin 'Shougo/neocomplete.vim'
    let g:neocomplete#enable_at_startup = 1
Plugin 'kien/ctrlp.vim.git'
Plugin 'bling/vim-airline'

""" COLORS
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-vividchalk'
Plugin 'dandorman/vim-colors'

""" UTIL
Plugin 'tpope/vim-vinegar'
Plugin 'zimbatm/direnv.vim'

call vundle#end()            " required
filetype plugin indent on    " required
set mouse=a

set hidden
" remember more commands and search history
set history=10000
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set laststatus=2
set showmatch
set incsearch
set hlsearch
set number
" make searches case-sensitive only if they contain upper-case characters
set ignorecase smartcase
" highlight current line
set nocursorline
set cmdheight=2
set switchbuf=useopen
set numberwidth=5
set showtabline=2
set winwidth=79
" Prevent Vim from clobbering the scrollback buffer. See
" http://www.shallowsky.com/linux/noaltscreen.html
set t_ti= t_te=
" keep more context when scrolling off the end of a buffer
set scrolloff=3
set nobackup
set nowb
set noswapfile
" allow backspacing over everything in insert mode
set backspace=indent,eol,start
" display incomplete commands
set showcmd
" Enable highlighting for syntax
syntax on
" Enable file type detection.
" Use the default filetype settings, so that mail gets 'tw' set to 72,
" 'cindent' is on in C files, etc.
" Also load indent files, to automatically do language-dependent indenting.
filetype plugin indent on
" use emacs-style tab completion when selecting files, etc
set wildmode=longest,list
" make tab completion for files/buffers act like bash
set wildmenu
let mapleader=","


set t_Co=256
set t_ut=
set background=light
color molokai

if has('mouse')
  set mouse=a
endif

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
set completeopt=menu

imap <c-c> <esc>

function! MapCR()
  nnoremap <cr> :nohlsearch<cr>
endfunction
call MapCR()
nnoremap <leader><leader> <c-^>

map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>e :edit %%
map <leader>v :view %%

set guioptions="agimrLt"
if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif
