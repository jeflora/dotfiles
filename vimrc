" Vundle {{
set nocompatible              
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'jiangmiao/auto-pairs'
Plugin 'jreybert/vimagit'
Plugin 'szw/vim-tags'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-obsession'
Plugin 'tpope/vim-surround'

call vundle#end()            
filetype plugin indent on   
" }}

"vim-airline configuration {{

let g:airline#extensions#tabline#enabled = 1

let g:airline_section_y = '%{strftime("%c")}'
"let g:airline_section_y = 'BN: %{bufnr("%")}'
" }}

" gitgutter {{
let g:gitgutter_sign_added    = '++'
let g:gitgutter_sign_modified = '>>'
let g:gitgutter_sign_removed  = '--'
let g:gitgutter_sign_removed_first_line = '^^'
let g:gitgutter_sign_modified_removed = '-+'
" }}

" ctags {{
nnoremap <C-a> <C-]> 
nnoremap <C-x> <C-t>
" }}

"NERDTree {{
map <C-n> :NERDTreeToggle<CR>
"}}

" Map jj sequence to act like escape key
:imap jj <ESC>

" Disallow arrow keys navigation {{
noremap <Up>    <NOP>
noremap <Down>  <NOP>
noremap <Left>  <NOP>
noremap <Right> <NOP>
" }}

" For more simple navigation in panes {{
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" }}

" General {{
filetype indent on
set autoindent
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set relativenumber
set number
set laststatus=2
set statusline+=%.10f
set tabline=
syntax on
set autowrite
set noswapfile
set showcmd

" Resize splits
set splitbelow
set splitright

" Display all matching files
set wildmenu

" Provides tab-completion for file-related tasks
set path+=**
set ic
set hls
set lbr
set tw=100
set showmatch
set scrolloff=20
" }}

" Colorscheme {
set background=dark
colorscheme hybrid
hi Normal ctermbg=none
" }
