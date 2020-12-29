call plug#begin()

" General
Plug 'vim-airline/vim-airline'
Plug 'mhinz/vim-startify'                                       " Start-page
Plug 'tpope/vim-fugitive'                                       " Git-wrapper
Plug 'mcchrish/nnn.vim'

" Code Formatting
Plug 'tpope/vim-surround'                                       " Quoting/Paranthesizing made simple!
Plug 'sheerun/vim-polyglot'

" Programming
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'andys8/vscode-jest-snippets'
Plug 'sirver/ultisnips'
Plug 'rust-lang/rust.vim'

" Themes
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }

call plug#end()
