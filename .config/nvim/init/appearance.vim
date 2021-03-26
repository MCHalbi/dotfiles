" *** GENERAL APPEARANCE ***
" Show line numbers
set number

" Show blue bar on column 81 (soft limit) and 121 (hard limit)
set colorcolumn=81,121
highlight ColorColumn ctermbg=lightblue

" Mark text beyond the soft limit red
match ErrorMsg '\%>80v.\+'

" Show trailing spaces and tabs
set list
set listchars=tab:>-,trail:·

function ToggleLineFeed()
  if &listchars =~ 'eol'
    set listchars-=eol:¶
  else
    set listchars+=eol:¶
  endif
endfunction

nnoremap <leader>L :call ToggleLineFeed()<CR>
