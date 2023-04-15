call plug#begin('~/.vim/plugged')
" Utility Plugins
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-surround'
Plug 'ctrlpvim/ctrlp.vim'
" Just because...
Plug 'mhinz/vim-startify'
" Colors
Plug 'kristijanhusak/vim-hybrid-material'
" Syntax
Plug 'plasticboy/vim-markdown'
Plug 'fatih/vim-go'
Plug 'dart-lang/dart-vim-plugin'
Plug 'leafgarland/typescript-vim'
" Linting
Plug 'w0rp/ale'
call plug#end()

packloadall
silent! helptags ALL

" Configure vim-go to use gofumpt
let g:go_fmt_command="gopls"
let g:go_gopls_gofumpt=1

let g:startify_custom_header = [
\'  █████▒▄▄▄       ███▄    █  ▄▄▄       ██▓ ██▓',
\'▓██   ▒▒████▄     ██ ▀█   █ ▒████▄    ▓██▒▓██▒',
\'▒████ ░▒██  ▀█▄  ▓██  ▀█ ██▒▒██  ▀█▄  ▒██▒▒██░',
\'░▓█▒  ░░██▄▄▄▄██ ▓██▒  ▐▌██▒░██▄▄▄▄██ ░██░▒██░',
\'░▒█░    ▓█   ▓██▒▒██░   ▓██░ ▓█   ▓██▒░██░░██████▒',
\'▒ ░    ▒▒   ▓▒█░░ ▒░   ▒ ▒  ▒▒   ▓▒█░░▓  ░ ▒░▓  ░',
\'░       ▒   ▒▒ ░░ ░░   ░ ▒░  ▒   ▒▒ ░ ▒ ░░ ░ ▒  ░',
\'░ ░     ░   ▒      ░   ░ ░   ░   ▒    ▒ ░  ░ ░',
\'░  ░         ░       ░  ░ ░      ░  ░',
\]


" Basic Settings
set background=dark
colorscheme hybrid_material

set lazyredraw
set hlsearch incsearch

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

" Status Line
function! LinterStatus() abort
    let l:counts = ale#statusline#Count(bufnr(''))

    let l:all_errors = l:counts.error + l:counts.style_error
    let l:all_non_errors = l:counts.total - l:all_errors

    return l:counts.total == 0 ? 'OK' : printf(
    \   '%dW %dE',
    \   all_non_errors,
    \   all_errors
    \)
endfunction

set laststatus=2
set statusline=
set statusline+=%2*\ %l
set statusline+=\ %*
set statusline+=%1*\ ‹‹
set statusline+=%1*\ %f\ %*
set statusline+=%1*\ ››
set statusline+=%1*\ %m
set statusline+=%1*\ %r
set statusline+=%3*\ %y
set statusline+=%=
set statusline+=%3*\ %{LinterStatus()}
set statusline+=%3*\ ‹‹
set statusline+=%1*\ (%l:%c)\ -\ %L
set statusline+=%3*\ ::
set statusline+=%2*\ %n
set statusline+=%3*\ ››\ %*
set statusline+=%2*\ [%{&fileencoding?&fileencoding:&encoding}]\ 
hi User1 ctermbg=DarkGrey ctermfg=White guibg=LightBlue guifg=Black
hi User2 ctermbg=White   ctermfg=Blue guibg=White guifg=DarkGrey
hi User3 ctermbg=Blue  ctermfg=White guibg=DarkGrey guifg=White

" Key Mappings
let mapleader = ","

" Exit insert
inoremap jk     <esc>
" Quick save
nnoremap <leader>w :w<CR>
" Quick save quit
nnoremap <leader>q :wq<CR>

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
nnoremap <leader>ew :e 
nnoremap <leader>es :vsp 
" Manage vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Keep search in the middle of the screen
nnoremap n nzzzv
nnoremap N Nzzzv
" Quick window movement
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" Turn off search highlight
nnoremap <silent> <leader>h :set hlsearch!<CR>
" Repeat on next line
nnoremap <leader>. j0.

" Execute python with F5
nnoremap <F5> <Esc>:w<CR>:!clear;python %<CR>

" Change working directory to the directory of the currently opened file
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>

" Autocmds

augroup vim
    au!
    " autosource vimrc on write
    au BufWritePost .vimrc source $MYVIMRC
augroup END

" Plugin Configuration
let g:vim_markdown_folding_disabled = 1
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:typescript_indent_disable = 1
let NERDTreeShowHidden=1

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

set novisualbell
