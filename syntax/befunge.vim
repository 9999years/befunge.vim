" Befunge-93 syntax file
" Language: Befunge
" Maintainer: Rebecca Turner <rbt@sent.as>
" Repository: github.com/9999years/befunge.vim

if exists('b:did_befunge_syntax') | finish | endif
let b:did_befunge_syntax = 1

let s:cpo_save = &cpo
set cpo&vim

syn match bfArithmetic '[+\-*/%!]\+' display
syn match bfGreaterThan  '`\+' display
syn match bfPCDirection '[<>^v?]\+' display

syn match bfIf '[_|]\+' display
syn match bfGetUser '[&~]\+' display
syn match bfData '[gp]\+' display
syn match bfPrint '[.,]\+' display

syn match bfPushDigit '\d\+' display
syn match bfStackMisc '[$\\:]\+' display

syn match bfFlow '[#@]\+' display

syn region bfString start=+"+ end=+"+
syn region bfComment start=';' end='$'
syn region bfInlineComment start='(' end=')'

hi link bfArithmetic Operator
hi link bfGreaterThan Operator
hi link bfPCDirection Special

hi link bfIf Special
hi link bfGetUser Function
hi link bfData Function
hi link bfPrint Function

hi link bfPushDigit Normal
hi link bfStackMisc Operator
hi link bfFlow Special

hi link bfComment Comment
hi link bfInlineComment Comment
hi link bfString String

let b:current_syntax = "befunge"

let &cpo = s:cpo_save
unlet s:cpo_save
