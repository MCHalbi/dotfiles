" *** COLOR SETTINGS ***
" Set background explicitely to dark to avoid a strange colored syntax
" highlighting in tmux. This is since tmux does not support the terminfo
" capability bce (back color erase) which vim checks for, to decide whether to
" use its 'default color' scheme.
set background=dark

autocmd FileType python colorscheme pythondark
