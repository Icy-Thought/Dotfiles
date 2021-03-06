if (has('termguicolors'))
  set termguicolors
endif

" General
set title
set encoding=UTF-8
set number                                          " Shows line numbers
set history=500                                     " VIM history limit
set clipboard=unnamedplus                           " Replaced * with + for yanking
set mouse=a                                         " Enable mouse-click to move cursor
set cursorline
set wildmenu
set hid                                             " Hide abandoned buffer
set autoread                                        " Reloads edited files done outside vim

" Tab configurations
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set copyindent

" Search
set hlsearch                                        " Highlight search results
set ignorecase                                      " Ignore case when searching
set smartcase                                       " Turn on smartcase
set incsearch                                       " Highlights all searches

" Indent
set list listchars=tab:│·

" Performance gain settings
set lazyredraw                                      " Prevents redraw while executing macros

" Leader
let g:mapleader = "\<Space>"

" Reload init.vim
nmap <leader>re :so $MYVIMRC<CR>

" Faster save/close
nmap <leader>w :w<CR>
nmap <leader>x :x<CR>
nmap <leader>q :q<CR>

" Better Buffers
nnoremap <C-J> :bp<CR>
nnoremap <C-K> :bp<CR>
nnoremap <C-D> :bd<CR>
