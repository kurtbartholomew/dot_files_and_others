
set nocompatible
filetype off
syntax on

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins start here

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'kien/ctrlp.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'mattn/emmet-vim'
" Plugin 'nvie/vim-flake8'
Plugin 'w0ng/vim-hybrid'
Plugin 'nlknguyen/vim-lisp-syntax'
Plugin 'vimwiki/vimwiki'

" Plugins end here

call vundle#end()
filetype plugin indent on

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set incsearch
set hlsearch
set noerrorbells
set novisualbell
set number

" NerdTree Settings

" Makes NERDTreeToggle easier in all modes
map <C-n> :NERDTreeToggle<CR>

" Airline Settings

" Enable a list of buffers at top
let g:airline#extensions#tabline#enabled = 1

" Show only filenames on tabline
let g:airline#extensions#tabline#fnamemod = ':t'

" Makes airline plugin actually display (for some strange reason)
set laststatus=2

nnoremap <leader><space> :nohlsearch<CR>
nnoremap <C-l> gt
nnoremap <C-h> gT

" Remaps moving between vim panes (also for vim-tmux pane movement)
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Move mode changing to from escape for easier change
inoremap jj <esc>

" Quickly traverse lists (buffers, quickfix, args, etc..)
nnoremap <silent> [b :bprevious<CR> 
nnoremap <silent> ]b :bnext<CR> 
nnoremap <silent> [B :bfirst<CR> 
nnoremap <silent> ]B :blast<CR>

" Active File Directory expansion (expands active filepath and removes
" filename
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" CtrlP Settings

" Change order of files show from top to bottom
let g:ctrlp_match_window = 'bottom,order:ttb'

" Always open files in a new buffer
let g:ctrlp_switch_buffer = 0

" CtrlP uses working directory of vim
let g:ctrlp_working_path_mode = 0

" C

" Compile and run current C file
set makeprg=clear\ &&\ gcc\ -Wall\ %\ -o\ %<.o\ &&\ ./%<.o

" Syntastic
" let g:syntastic_cpp_compiler_options = ' -std=c++11'

" Python

" PEP8 Standards for Python Files
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=80 |
    \ set autoindent |
    \ set fileformat=unix

" let python_highlight_all=1

