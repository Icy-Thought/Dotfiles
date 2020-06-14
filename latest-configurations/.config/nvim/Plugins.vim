call plug#begin()

" General
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'mhinz/vim-startify'										" Start-page
Plug 'tpope/vim-fugitive'										" Git-wrapper

" Code Formatting
Plug 'tpope/vim-surround'										" Quoting/Paranthesizing made simple!

" Programming
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sirver/ultisnips'
Plug 'rust-lang/rust.vim'

" Document Editing/Viewing
Plug 'lervag/vimtex'

" Themes
Plug 'vim-airline/vim-airline-themes'
Plug 'dracula/vim', { 'as': 'dracula' }
" Plug 'morhetz/gruvbox'
" Plug 'arcticicestudio/nord-vim'

call plug#end()
