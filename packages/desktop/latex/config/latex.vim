" File to control LaTeX integration with Vim
" Also installs the vimtex plugin using vundle
augroup latex
    autocmd!
    autocmd FileType tex setlocal spell spelllang=en_us
    autocmd BufWinEnter *.tex :VimtexCompile 
augroup END
let g:tex_flavor='latex'

" Testing Tex stuff (not really sure what it does yet)
if !exists('g:ycm_semantic_triggers')
  let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers.tex = [
      \ 're!\\[A-Za-z]*(ref|cite)[A-Za-z]*([^]]*])?{([^}]*, ?)*'
        \ ]

" Vimtex plugin
Plugin 'lervag/vimtex'

" TeX PDF viewer integration
let g:vimtex_view_method = 'zathura'

