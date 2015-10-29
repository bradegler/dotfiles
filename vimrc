call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-surround'
Plug 'bling/vim-airline'
Plug 'pangloss/vim-javascript'
Plug 'Valloric/YouCompleteMe'
Plug 'tomasr/molokai'
Plug 'tpope/vim-haml'
Plug 'terryma/vim-multiple-cursors'
Plug 'plasticboy/vim-markdown'
Plug 'klen/python-mode'
Plug 'nanotech/jellybeans.vim'
Plug 'martintreurnicht/vim-gradle'
Plug 'kristijanhusak/vim-hybrid-material'
call plug#end()

" colorscheme jellybeans
colorscheme hybrid_material

set showcmd
set showmatch
set ignorecase
set nobackup
set noswapfile
set nowritebackup
set tabstop=4
set shiftwidth=4
set expandtab
set vb
set noai
set backspace=indent,eol,start
