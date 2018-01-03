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
"Plug 'Valloric/YouCompleteMe'
Plug 'tomasr/molokai'
Plug 'tpope/vim-haml'
Plug 'terryma/vim-multiple-cursors'
Plug 'plasticboy/vim-markdown'
"Plug 'klen/python-mode'
Plug 'nanotech/jellybeans.vim'
Plug 'martintreurnicht/vim-gradle'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mhinz/vim-startify'
Plug 'fatih/vim-go'
Plug 'dart-lang/dart-vim-plugin'
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
set relativenumber

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
