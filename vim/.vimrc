" vimrc

"" map the leader key to space
let mapleader = ' '

"" plugins
call plug#begin('~/.config/nvim/plugged')

Plug 'junegunn/vim-plug'

Plug 'AndrewRadev/splitjoin.vim'
Plug 'Yggdroot/indentLine'
Plug 'camspiers/animate.vim'
Plug 'camspiers/lens.vim'
Plug 'itchyny/lightline.vim'
Plug 'mhinz/vim-startify'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'reedes/vim-pencil'
Plug 'sheerun/vim-polyglot'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'vimwiki/vimwiki'

call plug#end()

"" plugin settings

""" coc
nmap <space>e :CocCommand explorer<CR>

""" lightline
let g:lightline = {'colorscheme': 'gruvbox'}

""" netrw
let g:netrw_banner = 0
let g:netrw_browsesplit = 4
let g:netrw_liststyle = 3
let g:netrw_winsize = 10

"" autocmds
augroup General
    au!
    autocmd BufWritePre * :%s/\s\+$//e " remove trailing whitespace
    autocmd VimEnter * set indentexpr= " disable auto-indent
augroup END

"" encoding
scriptencoding utf-8
set encoding=utf-8

"" code folding
set foldenable
set foldlevelstart=99
set foldmethod=indent

"" search
set ignorecase
set incsearch

"" tabs
set expandtab
set shiftwidth=4
set tabstop=4

"" disable temporary files
set nobackup
set noswapfile
set noundofile
set nowritebackup
set viminfo=

"" ui
set lazyredraw
set noshowmode
set nowrap
set number
set relativenumber
set ruler
set splitbelow
set splitright
set visualbell
set wildmenu
syntax on

"" miscellaneous
set backspace=indent,eol,start
