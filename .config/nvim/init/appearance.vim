" *** GENERAL APPEARANCE ***
" Show line numbers
set number

" Show blue bar on column 121
set colorcolumn=121
highlight ColorColumn ctermbg=lightblue

" Mark text beyond the soft limit red
match ErrorMsg '\%>120v.\+'

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
