call plug#begin()

" General
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'mhinz/vim-startify'                                       " Start-page
Plug 'tpope/vim-fugitive'                                       " Git-wrapper
Plug 'liuchengxu/vim-which-key'                                 " Emacs-like Which-Suggestions

" Code Formatting
Plug 'tpope/vim-surround'                                       " Quoting/Paranthesizing made simple!
Plug 'sheerun/vim-polyglot'

" Programming
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sirver/ultisnips'
Plug 'rust-lang/rust.vim'

" Document Editing/Viewing
Plug 'lervag/vimtex'

" Themes
" Plug 'vim-airline/vim-airline-themes'

call plug#end()
