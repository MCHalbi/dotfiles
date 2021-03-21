" *** COLOR SETTINGS ***
" Set background explicitely to dark to avoid a strange colored syntax
" highlighting in tmux. This is since tmux does not support the terminfo
" capability bce (back color erase) which vim checks for, to decide whether to
" use its 'default color' scheme.
set background=dark

" Use python-specific color-scheme for python files
autocmd FileType python colorscheme pythondark

" Set highlighting for diff sections (for vimdiff)
highlight DiffAdd    cterm=none ctermfg=White ctermbg=DarkGreen
highlight DiffChange cterm=none ctermfg=White ctermbg=DarkBlue
highlight DiffDelete cterm=bold ctermfg=White ctermbg=DarkRed
highlight DiffText   cterm=bold ctermfg=White ctermbg=DarkBlue

" Switch off syntax highlighting in vimdiff to avoid unreadable text due to
" overlap of syntax highlighting and highlighted diff-sections.
if &diff
    syntax off
endif
