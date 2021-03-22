syn keyword pythonSelf self
highlight def link pythonSelf Special

syn keyword pythonBoolean True False

syn region pythonDocstring start=+^\s*[uU]\?[rR]\?"""+ end=+"""+ keepend excludenl contains=pythonEscape,@Spell,pythonDoctest,pythonDocTest2,pythonSpaceError
syn region pythonDocstring start=+^\s*[uU]\?[rR]\?'''+ end=+'''+ keepend excludenl contains=pythonEscape,@Spell,pythonDoctest,pythonDocTest2,pythonSpaceErrorv

syn match pythonTypeHint +: \zs["']\=\w*["']\=\ze[,)]+
syn match pythonBaseclass "\%(class\s\+\h\w*\)\@<=(\zs\h\w*\ze)"
syn match pythonProtectedMethod "\.\@<=_[^_]\w*\ze("
syn match pythonProtectedMember "\.\@<=_[^_]\w*\ze[A-Za-z_(]\@!"

syn match pythonDecorator  "@" display nextgroup=pythonDottedName skipwhite
syn match pythonDottedName "[a-zA-Z_][a-zA-Z0-9_]*\%(\.[a-zA-Z_][a-zA-Z0-9_]*\)*" display contained
syn match pythonDot        "\." display containedin=pythonDottedName
