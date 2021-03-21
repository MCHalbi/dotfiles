" Colorscheme for python, inspired by the VisualStudio Dark theme.
" Author: Lukas Halbritter <halbritl@informatik.uni-freiburg.de>

if exists('syntax_on')
  syntax reset
endif

set t_Co=256
let g:colors_name = 'pythondark'

" Color names
let s:blue  = 31
let s:cyan  = 36
let s:lcyan = 42
let s:red   = 174
let s:green = 65
let s:cream = 230
let s:lblue = 81

" Function to define a color scheme for a syntax group
function! s:h(group, style)
  execute "highlight" a:group
    \ "ctermfg=" (has_key(a:style, "fg")    ? a:style.fg    : "NONE")
    \ "ctermbg=" (has_key(a:style, "bg")    ? a:style.bg    : "NONE")
    \ "cterm="   (has_key(a:style, "cterm") ? a:style.cterm : "NONE")
endfunction

" General
call s:h("Normal", {"fg": 253, "bg": 235})
call s:h("LineNr", {"fg": s:blue})
call s:h("Folded", {"fg": 247, "cterm": "underline"})

" Comments
call s:h("pythonComment",      {"fg": s:green})
call s:h("pythonDocstring",    {"fg": s:green})
call s:h("pythonTripleQuotes", {"fg": s:green})

" Identifiers
call s:h("pythonFunction",        {"fg": s:cyan})
call s:h("pythonProtectedMember", {"fg": s:lblue})
call s:h("pythonProtectedMethod", {"fg": s:lcyan})
call s:h("pythonBaseclass",       {"fg": s:cyan})
call s:h("pythonDecorator",       {"fg": s:cyan})
call s:h("pythonDottedName",      {"fg": s:cyan})

" Constants
call s:h("pythonString",   {"fg": s:red})
call s:h("pythonNumber",   {"fg": s:cream})
call s:h("pythonFloat",    {"fg": s:cream})
call s:h("pythonBoolean",  {"fg": s:blue})
call s:h("pythonQuotes",   {"fg": s:red})
call s:h("pythonTypeHint", {"fg": s:blue})

" Statements
call s:h("pythonStatement",   {"fg": s:blue})
call s:h("pythonConditional", {"fg": s:blue})
call s:h("pythonRepeat",      {"fg": s:blue})
call s:h("pythonSelf",        {"fg": s:blue})
call s:h("pythonException",   {"fg": s:blue})
call s:h("pythonOperator",    {"fg": s:blue})
call s:h("pythonBuiltin",     {"fg": s:blue})

call s:h("pythonInclude", {"fg": s:blue})

" Types
call s:h("pythonExceptions", {"fg": s:cyan})
