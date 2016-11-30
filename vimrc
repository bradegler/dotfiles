call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-surround'
"Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
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
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mhinz/vim-startify'
call plug#end()

" colorscheme jellybeans
set background=dark
colorscheme hybrid_material

let g:airline_theme = "hybrid"

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
set encoding=utf-8
set nu

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

let g:vim_markdown_folding_disabled = 1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
