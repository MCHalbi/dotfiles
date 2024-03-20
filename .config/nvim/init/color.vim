" *** COLOR SETTINGS ***
" Set background explicitely to dark to avoid a strange colored syntax
" highlighting in tmux. This is since tmux does not support the terminfo
" capability bce (back color erase) which vim checks for, to decide whether to
" use its 'default color' scheme.
set background=dark

colorscheme lucius
LuciusDarkLowContrast

" Use python-specific color-scheme for python files
autocmd FileType python colorscheme pythondark

" Set highlighting for diff sections (for vimdiff)
highlight DiffAdd    cterm=none ctermfg=34 ctermbg=22
highlight DiffChange cterm=none ctermfg=33 ctermbg=17
highlight DiffDelete cterm=bold ctermfg=124 ctermbg=52
highlight DiffText   cterm=bold ctermfg=33 ctermbg=17

highlight link diffRemoved   DiffDelete
highlight link diffAdded     DiffAdd
highlight link diffChanged   DiffChange
highlight      diffIndexLine cterm=none ctermfg=4
highlight      diffFile      cterm=bold,underline ctermfg=45
highlight      diffOldFile   cterm=none ctermfg=4
highlight      diffNewFile   cterm=none ctermfg=4
highlight      diffLine      cterm=bold,undercurl ctermfg=39
highlight      diffSubname   cterm=undercurl ctermfg=39

" Switch off syntax highlighting in vimdiff to avoid unreadable text due to
" overlap of syntax highlighting and highlighted diff-sections.
if &diff
    syntax off
endif
