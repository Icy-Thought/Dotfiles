" Active theme
colorscheme challenger_deep

" Tranpsarency
" hi! Normal ctermbg=NONE guibg=NONE

" vim-startify
autocmd BufDelete * if empty(filter(tabpagebuflist(), '!buflisted(v:val)')) | Startify | endif

" Vim-Airline configurations:
let g:airline#extensions#default#layout = [ [ 'a', 'b', 'c' ], [ 'x', 'y' ] ]
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'                    " Disable file-paths 

" UltiSnips
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsSnippetDirectories=["UltiSnips"]

" Coc Configuration
let g:coc_global_extensions = [
  \ 'coc-pairs',
  \ 'coc-snippets',
  \ 'coc-json',
  \ 'coc-clangd'
  \ ]
