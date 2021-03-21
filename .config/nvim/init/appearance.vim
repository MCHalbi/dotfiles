" *** GENERAL APPEARANCE ***
" Show line numbers
set number

" Show blue bar on column 81 (soft limit) and 121 (hard limit)
set colorcolumn=81,121
highlight ColorColumn ctermbg=lightblue

" Mark text beyond the soft limit red
match ErrorMsg '\%>80v.\+'
