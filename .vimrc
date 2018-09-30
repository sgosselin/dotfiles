" ============================================================================
" vimrc - sgosselin/voxelgrid
"
" Installation:
"     1. Install vundle:
"         git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle.vim
"
"     2. Install vundle bundles
"         vim +BundleInstall +qall
" ============================================================================

" enable per file type indentation
filetype plugin indent on

" general vim configuration
set nocompatible
set number
set laststatus=2
set showmatch
set nobackup
set noswapfile
set textwidth=80
set cursorline
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

" initialize vundle runtime
filetype off
set rtp+=~/.vim/bundle/vundle.vim/
call vundle#rc()

" vundle bundles
Bundle 'gmarik/vundle'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-session'
Bundle 'corntrace/bufexplorer'
Bundle 'scrooloose/nerdtree'
Bundle 'majutsushi/tagbar'
Bundle 'Lokaltog/vim-powerline'
Bundle 'mileszs/ack.vim'
Bundle 'garbas/vim-snipmate'
Bundle 'kudabux/vim-srcery-drk'
Bundle 'tomasr/molokai'
Bundle 'flazz/vim-colorschemes'
Bundle 'kien/ctrlp.vim'
Bundle 'rust-lang/rust.vim'
Bundle 'SirVer/ultisnips'
Bundle 'honza/vim-snippets'
Bundle 'chazy/cscope_maps'

" set colorscheme
syntax on
let g:rehash256=1
colorscheme molokai

" disable session auto-save when exiting
let g:session_autosave = 'no'

" remap leader-key
let mapleader = ","

" remap functions to shortcuts
nnoremap ,n :NERDTreeToggle<CR>
nnoremap ,b :BufExplorer<CR>
nnoremap ,f :call ShowFuncName()<CR>
nnoremap ,t :TagbarToggle<CR>

" prevent scrolling from being slow
set lazyredraw

" UltiSnips:
" Trigger configuration.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
