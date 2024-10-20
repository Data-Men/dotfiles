
syntax on

set number
set relativenumber

set tabstop=2 softtabstop=2

" indentation shift spaces
set shiftwidth=2

" allow to switch buffer without saving them first
set hidden

set smartindent

set undodir=~/.vim/undodir
set undofile

" start searching as soon as I type
set incsearch

"  Keeps at least 8 lines visible above and below the cursor when scrolling
set scrolloff=8

" auto complete
set completeopt=menuone,noinsert,noselect

set cursorline
highlight CursorLine ctermbg=darkgrey guibg=#3c3c3c
set cursorcolumn

let mapleader=" " 

nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>

nnoremap <leader>bn :bnext<CR>    " Go to the next buffer with leader + bn
nnoremap <leader>bp :bprevious<CR>    " Go to the previous buffer with leader + bp

nnoremap <leader>u gUw   " CONVERT word under cursor to uppercase with leader + u
nnoremap <leader>l guw   " Convert word under cursor to lowercase with leader + l

" for managing tabs
nnoremap <leader>tn :tabn<CR>
nnoremap <leader>tp :tabp<CR>

" split to right
set splitright

call plug#begin()

    Plug 'preservim/nerdtree'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'morhetz/gruvbox'
		Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()


let g:gruvbox_contrast_dark = 'medium'   " Options: 'soft', 'medium', 'hard'
set background=dark
colorscheme gruvbox
" Enables true color support in the terminal
set termguicolors

" for nerd tree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
" nnoremap <C-f> :NERDTreeFind<CR>

" fzf.vim key mappings
nnoremap <C-p> :Files<CR>
nnoremap <C-b> :Buffers<CR>
nnoremap <C-f> :Rg<CR>
nnoremap <C-g> :GFiles<CR>
nnoremap <C-h> :History:<CR>

" auto suggestion selection
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <CR>    pumvisible() ? "\<C-y>" : "\<CR>"
