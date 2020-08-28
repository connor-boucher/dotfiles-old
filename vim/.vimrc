" vimrc

"" plugins
call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-plug'

Plug 'Shougo/deoplete.nvim'
Plug 'itchyny/lightline.vim'
Plug 'rust-lang/rust.vim'
Plug 'dylanaraps/wal.vim'

call plug#end()

"" plugin settings
" let g:deoplete#enable_at_startup = 1
let g:lightline = {'colorscheme': 'wombat'}

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
colorscheme wal
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
