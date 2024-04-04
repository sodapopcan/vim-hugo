function! s:DetectGoTemplate()
  if findfile('hugo.toml', '.;') !=# ''
    set ft=htmlhugo
  elseif findfile('hugo.yml', '.;') !=# ''
    set ft=htmlhugo
  elseif findfile('hugo.yaml', '.;') !=# ''
    set ft=htmlhugo
  elseif findfile('hugo.json', '.;') !=# ''
    set ft=htmlhugo
  elseif findfile('.hugo_build.lock', '.;') !=# ''
    set ft=htmlhugo
  elseif search('{{\s*end\s*}}')
    set ft=htmlhugo
  elseif search('{{\s*$\k\+\s*:=')
    set ft=htmlhugo
  elseif search('{{\s*\.[A-Z]')
    set ft=htmlhugo
  endif
endfunction

augroup DetectGoTemplate
  autocmd!
  autocmd BufNewFile,BufRead *.html call <SID>DetectGoTemplate()
augroup END
