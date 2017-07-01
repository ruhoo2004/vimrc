" auto apply .vimrc changes
autocmd BufWritePost $MYVIMRC source $MYVIMRC

" file type detection
filetype on
filetype plugin on
filetype indent on

syntax enable
syntax on

" vim personal setup
set incsearch
set ignorecase
set nocompatible
set wildmenu
set laststatus=2
set ruler
set number
set hlsearch
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set foldmethod=syntax
set nofoldenable
set encoding=utf-8
set t_Co=256

" vundle plugin setup
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Lokaltog/vim-powerline'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'derekwyatt/vim-fswitch'
Plugin 'mileszs/ack.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-fugitive'
"Plugin 'kshenoy/vim-signature'
"Plugin 'vim-scripts/BOOKMARKS--Mark-and-Highlight-Full-Lines'
Plugin 'majutsushi/tagbar'
"Plugin 'vim-scripts/indexer.tar.gz'
"Plugin 'vim-scripts/DfrankUtil'
"Plugin 'vim-scripts/vimprj'
Plugin 'dyng/ctrlsf.vim'
"Plugin 'terryma/vim-multiple-cursors'
"Plugin 'scrooloose/nerdcommenter'
"Plugin 'vim-scripts/DrawIt'
"Plugin 'SirVer/ultisnips'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'derekwyatt/vim-protodef'
"Plugin 'scrooloose/nerdtree'
"Plugin 'fholgado/minibufexpl.vim'
"Plugin 'gcmt/wildfire.vim'
"Plugin 'sjl/gundo.vim'
"Plugin 'Lokaltog/vim-easymotion'
"Plugin 'suan/vim-instant-markdown'
"Plugin 'lilydjwg/fcitx.vim'
call vundle#end()
filetype plugin indent on

" hotkey setup
let mapleader=";"
nmap <leader>lb 0
nmap <leader>le $

vnoremap <leader>y "+y
nmap <leader>p "+p

nmap <leader>q :q<CR>
nmap <leader>w :w<CR>
nmap <leader>WQ :wa<CR>:q<CR>
nmap <leader>Q :qa!<CR>
nmap <leader>x :bd<CR>

nnoremap nw <C-W><C-W>
nnoremap <leader>lw <C-W>l
nnoremap <leader>hw <C-W>h
nnoremap <leader>kw <C-W>k
nnoremap <leader>jw <C-W>j

nmap <leader>M %

" vim-fswitch setting
nmap <silent> <leader>sw :FSHere<CR>

" tagbar setup
nnoremap <leader>tt :TagbarToggle<CR>

" ctags setup
set tags+=~/download/libzmq/tags
nmap <leader>tn :tnext<CR>
nmap <leader>tp :tprevious<CR>

" ack setup
nmap <leader>a :Ack! 

" nerdtree setup
nmap <leader>nn :NERDTreeToggle<CR>
nmap <leader>nc :NERDTree %<CR>

" theme setup
let g:Powerline_theme = 'solarized256'
