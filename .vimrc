" Initial Config
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tomasr/molokai'
Plugin 'bling/vim-airline'

call vundle#end()

filetype plugin indent on


" --- Theme ---
syntax enable
set background=dark   

" --- Useful IDE Stuff ---
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'vim-syntastic/syntastic'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'majutsushi/tagbar'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-scripts/a.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'vincom2/tabmerge-mirror'

" --- Language Support ---
Plugin 'lervag/vimtex'

" --- Git Stuff ---
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'

" --- General settings ---
set mouse=a
set noswapfile
set backspace=indent,eol,start
set ruler
set number
set showcmd
set incsearch
set hlsearch
set splitbelow
set splitright

filetype plugin indent on
set shiftwidth=4
set tabstop=4
set expandtab
set textwidth=120
set clipboard=unnamed

highlight LineNr ctermbg=236
hi clear SignColumn
syntax on

" --- NERDTree Tabs ---
nmap <silent> <leader>t :NERDTreeTabsToggle<CR>
let g:nerdtree_tabs_open_on_console_startup = 0

" --- EasyTag Config ---
set tags=./tags;,~/.vimtags
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1
let g:Tlist_Ctags_Cmd='/usr/local/Cellar/ctags/5.8_1/bin/ctags'

nmap <silent> <leader>b :TagbarToggle<CR>

" --- delimitMate config ---
let delimitMate_expand_cr = 1
augroup mydelimitMate
	au!
	au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
	au FileType tex let b:delimitMate_quotes = ""
	au FileType tex let b:delimitMate_matchpairs = "(:),[:],{:},`:'"
	au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
augroup END

" --- Map Window Pane Toggle ---
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-W><C-L>
nnoremap <C-h> <C-W><C-H>
