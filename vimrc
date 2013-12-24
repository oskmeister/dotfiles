syntax on
filetype plugin indent on
set nocp

set cin aw ai bs=2 sts=4 sw=4 nu noeb so=2
set tabstop=4
set expandtab
set cursorline

" color scheme
colorscheme delek

" vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" plugins
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-fugitive'
Bundle 'majutsushi/tagbar'
Bundle 'scrooloose/nerdtree'

let g:syntastic_python_checkers=['pylint']
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'

" bindings
:map <C-T> :TagbarToggle<CR>
:map <C-F> :NERDTreeToggle<CR>

inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

" trailing whitespace handling
highlight Whitespace ctermbg=red guibg=red
autocmd BufEnter * match Whitespace /\s\+$/
