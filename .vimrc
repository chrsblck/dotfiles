" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set hidden             " Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)
set incsearch
set ruler
set showmatch
set smartindent
set laststatus=2
set backspace=indent,eol,start
set nu 			" Turn on line numbers
set ai  		" Turn on Auto indention
set hlsearch
set tabstop=4
set shiftwidth=4
set expandtab
set completeopt=longest,menuone "auto-completion magic

" Jump to last known position
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

" Dash.app
nmap <silent> <leader>d <Plug>DashSearch

" VIM Plug settings
call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'lifepillar/vim-solarized8'
Plug 'hotchpotch/perldoc-vim'
Plug 'bling/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'fatih/vim-go'
" Recommended in vim-go tut
Plug 'ctrlpvim/ctrlp.vim'
"Plug 'SirVer/ultisnips'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'mhinz/vim-startify'

call plug#end()

set background=dark
colorscheme gruvbox
" colorscheme solarized8_dark

" Airline
let g:airline_powerline_fonts=0
set t_Co=256

" Go lang
let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1

let $NVIM_TUI_ENABLE_TRUE_COLOR=1

