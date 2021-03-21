" *** TABS AND INDENDATIONS ***
" Set textwidth to 80 characters
set textwidth=80

" Set tab size of 2 as default value
set tabstop=2
set shiftwidth=2

" Use 4 space indedation in python files
autocmd FileType python setlocal ts=4 sw=4

" Expand tabs to spaces by default
set expandtab

" Do not expant tabs in Makefiles
autocmd FileType make setlocal noexpandtab

" Indent lines automatically
set autoindent

" Show trailing spaces and tabs
set list
set listchars=tab:>-,trail:·
