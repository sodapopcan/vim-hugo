setlocal path+=layouts/shortcodes

function s:trim_slash() abort
  return substitute(v:fname, '^/', '', '').'.html'
endfunction
setlocal includeexpr=s:trim_slash()
