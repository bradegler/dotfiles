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

let g:ycm_path_to_python_interpreter = '/usr/bin/python'


" Window movements; I do this often enough to warrant using up M-arrows on
" this"
nnoremap <M-Right> <C-W><Right>
nnoremap <M-Left> <C-W><Left>
nnoremap <M-Up> <C-W><Up>
nnoremap <M-Down> <C-W><Down>
"
" " Open window below instead of above"
nnoremap <C-W>N :let sb=&sb<BAR>set sb<BAR>new<BAR>let &sb=sb<CR>
"
" " Vertical equivalent of C-w-n and C-w-N"
nnoremap <C-w>v :vnew<CR>
nnoremap <C-w>V :let spr=&spr<BAR>set nospr<BAR>vnew<BAR>let &spr=spr<CR>
"
" " I open new windows to warrant using up C-M-arrows on this"
nmap <C-M-Up> <C-w>n
nmap <C-M-Down> <C-w>N
nmap <C-M-Right> <C-w>v
nmap <C-M-Left> <C-w>V
