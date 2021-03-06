" ================= Vundle ==================
set nocompatible              
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" ================= PLUGINS =================

Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'jiangmiao/auto-pairs'
Plugin 'jreybert/vimagit'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-surround'
Plugin 'cohlin/vim-colorschemes'
Plugin 'wakatime/vim-wakatime'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'iamcco/markdown-preview.vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" ============ END OF PLUGINS ===============
call vundle#end()            
filetype plugin indent on   

" ============= vim-airline =================
let g:airline#extensions#tabline#enabled = 1
"let g:airline_section_y = '%{strftime("%c")}'
"let g:airline_section_y = 'BN: %{bufnr("%")}'

" ============== gitgutter ==================
let g:gitgutter_sign_added    = '++'
let g:gitgutter_sign_modified = '>>'
let g:gitgutter_sign_removed  = '--'
let g:gitgutter_sign_removed_first_line = '^^'
let g:gitgutter_sign_modified_removed = '-+'

" ============== NERDTree ===================
map <C-n> :NERDTreeToggle<CR>

" =========== YouCompleteMe =================
let g:ycm_key_list_select_completion = ['<C-j>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<Up>']

let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_complete_in_comments = 1

" ============= UltiSnips  ==================
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<S-tab>'

" =============== vim-markdown ==============
let g:vim_markdown_new_list_item_indent = 4
let g_vim_markdown_no_extensions_in_markdown = 1

" ========== markdown-preview.vim ===========
let g:mkdp_path_to_chrome = 'firefox'
map <C-m> :MarkdownPreview<CR>
map <C-c> :MarkdownPreviewStop<CR>
autocmd BufWritePost *.markdown,*.md :MarkdownPreview

" ============= Navigation ==================
" Map jj to act like escape
:imap jj <ESC>

" Disallow arrow keys navigation
noremap <Up>    <NOP>
noremap <Down>  <NOP>
noremap <Left>  <NOP>
noremap <Right> <NOP>

" For more simple navigation in panes
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" ============== General ====================

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
set colorcolumn=120 

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

" ============ Colorscheme ==================
let g:airline_theme="edocx"
colorscheme xcode-default

