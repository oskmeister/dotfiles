syntax on
filetype plugin indent on
set nocp

set cin aw ai bs=2 sts=4 sw=4 nu noeb bg=dark so=2
sy on
set tabstop=4
set autoindent
set expandtab
set hlsearch
set cursorline

" vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" plugins
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-fugitive'
Bundle 'majutsushi/tagbar'
Bundle 'scrooloose/nerdtree'

:map <C-T> :TagbarToggle<CR>
:map <C-F> :NERDTreeToggle<CR>

colorscheme delek

inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

let g:syntastic_python_checkers=['pylint']
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'
let g:ycm_global_ycm_extra_conf = '/Users/osk/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
