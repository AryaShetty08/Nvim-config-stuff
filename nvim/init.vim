:set nocompatible
 filetype on
 filetype plugin on 
 filetype indent on
:set number
" :set autoindent
:set tabstop=4
:set softtabstop=4
:set expandtab
:set shiftwidth=4
:set mouse=a
" :set cc=80
:set cursorline
:set hlsearch
:set nobackup
:set nowrap
:set incsearch
:set ignorecase
:set showcmd
:set showmode
:set showmatch
:set history=1000

call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

Plug 'nvim-tree/nvim-tree.lua'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://github.com/cohama/lexima.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.5'  }
Plug 'folke/tokyonight.nvim'
Plug 'https://github.com/xiyaowong/transparent.nvim'
Plug 'dstein64/nvim-scrollview'
Plug 'https://github.com/Shatur/neovim-session-manager'
Plug 'stevearc/dressing.nvim'

call plug#end()

set encoding=utf-8
set nobackup
set nowritebackup
set updatetime=300
set signcolumn=yes
inoremap <silent><expr> <Tab> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<Tab>"

" color scheme
colorscheme tokyonight-moon

" set leader 
let mapleader = ","

" nvim-tree-toggle
nnoremap <leader>nt <cmd>NvimTreeToggle<cr>
nnoremap <leader>nf <cmd>NvimTreeFindFile<cr>

" telescope
nnoremap <leader>tf <cmd>Telescope find_files hidden=true<cr>

" transparent
nnoremap <leader>tt <cmd>TransparentToggle<cr>

" tabs
nnoremap <leader><tab> <cmd>tabnew<cr><cmd>Telescope find_files hidden=true<cr>
nnoremap <Tab> gt
nnoremap <S-Tab> gT

" session manager,

lua require('conf')
