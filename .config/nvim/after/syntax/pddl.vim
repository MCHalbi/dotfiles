" pddl.vim - Syntax highlighting for Planning Domain Definition Language
" (PDDL) files
"
" Maintainer: Pontus Persson <https://pontus-persson.se/>
" Latest Revision: 2016-09-26
"
" *.maepl support by: Lukas Halbritter <halbi93@gmx.de>


if exists("b:current_syntax")
  finish
endif

syn match pddlVariable '?\(\w\|[0-9]\|_\|-\)\+'

syn region pddlComment start=/\s*;/ end=/$/

syn keyword pddlBuiltin define and or not problem domain either exists forall
syn keyword pddlBuiltin when assign scale-up scale-down increase decrease start
syn keyword pddlBuiltin end all over minimize maximize total-time

syn match pddlUses ':\(strips\|typing\|equality\|adl\|fluents\|\)'
syn match pddlUses ':\(disjunctive\|negative\|existential\|universal\)\-preconditions'
syn match pddlUses ':\(durative\-actions\|derived\-predicates\|timed\-initial\-literls\)'

syn match pddlKeyword ':\(requirements\|types\|constants\|predicates\|action\|durative-action\|domain\|parameters\|effect\|precondition\|objects\|init\|goal\|functions\|duration\|condition\|derived\|metric\)'

" MAEPL
syn keyword maeplBuiltin knows
syn keyword maeplBuiltin each if
syn keyword maeplBuiltin in equals set emptyset union intersection difference powerset

syn match maeplKeyword ':\(event-\(non\)\=designated\|world-\(non\)\=designated\)'
syn match maeplKeyword ':\(observability\|owner\|observes\)'
syn match maeplKeyword ':\(name\|generate-worlds\|generate-events\|designate\|facts\|law\)'

let b:current_syntax = "pddl"
highlight def link pddlBuiltin Function
highlight def link pddlKeyword Keyword
highlight def link maeplBuiltin Function
highlight def link maeplKeyword Keyword
highlight def link pddlUses Constant
highlight def link pddlVariable Type
highlight def link pddlComment Comment
