call plug#begin('~/.vim/plugged')
" Utility Plugins
"Plug 'scrooloose/nerdtree'
"Plug 'scrooloose/syntastic'
"Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Just because...
Plug 'mhinz/vim-startify'
" Colors
Plug 'kristijanhusak/vim-hybrid-material'
" Syntax
Plug 'tpope/vim-haml'
Plug 'plasticboy/vim-markdown'
Plug 'martintreurnicht/vim-gradle'
Plug 'fatih/vim-go'
Plug 'dart-lang/dart-vim-plugin'
Plug 'leafgarland/typescript-vim'
call plug#end()

" Basic Settings
set background=dark
colorscheme hybrid_material

set lazyredraw
set hlsearch incsearch
let g:airline_theme = "hybrid"
let g:typescript_indent_disable = 1

set showcmd
set showmatch
set ignorecase smartcase
set backspace=indent,eol,start
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
set cursorline
set nobackup noswapfile nowritebackup
set shell=/bin/bash

set vb
set relativenumber

set encoding=utf-8
set fileencoding=utf-8
set ffs=unix,dos

set splitbelow splitright

" Key Mappings
let mapleader = ","

" Exit insert
inoremap jk     <esc>
" Quick save
nnoremap <leader>w :w<CR>
" Toggle nerd tree
nnoremap <leader>ne :NERDTreeToggle<CR>
" Change to use Blackhole registers
nnoremap x "_x
nnoremap X "_X
nnoremap c "_c
nnoremap C "_C
" Make Y behave more like D and C
nnoremap Y y$
" Buffer navigation
nnoremap <silent> gb    :bnext<cr>
nnoremap <silent> gB    :bprevious<cr>
" Splits
nnoremap <silent> <leader>s :sp<cr>
nnoremap <silent> <leader>S :vsp<cr>
" indenting keeps original selection in visual
xnoremap > >gv
xnoremap < <gv
" reselect pasted text
nnoremap <leader>v V`]
" Fuzzy find files 
noremap <silent> <leader><leader> :CtrlP<cr>
" Open files in the same directory as the current file
cnoremap %% <C-R>=fnameescape(expand('%:h')).'/'<cr>
map <leader>ew :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%
" Keep search in the middle of the screen
nnoremap n nzzzv
nnoremap N Nzzzv
" Quick window movement
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Plugin Configuration
let g:airline_theme = "hybrid"
let g:vim_markdown_folding_disabled = 1
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

" Autocmds

augroup vim
    au!

    " autosource vimrc on write
    au BufWritePost .vimrc source $MYVIMRC
augroup END
