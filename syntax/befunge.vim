" Befunge-93 syntax file
" Language: Befunge
" Maintainer: Rebecca Turner <rbt@sent.as>
" Repository: github.com/9999years/befunge.vim

" if exists('b:did_befunge_syntax') | finish | endif
" let b:did_befunge_syntax = 1

syn match bfSkip '#'
syn match bfHalt '@'

syn match bfPopDiscard '\$'
syn match bfSwap '\\'
syn match bfDuplicate ':'
syn cluster bfStackMisc contains=bfPopDiscard,bfSwap,bfDuplicate

syn match bfGreaterThan  '`'

syn match bfGetData 'g'
syn match bfPutData 'p'

syn match bfAdd '+'
syn match bfSub '-'
syn match bfMul '\*'
syn match bfDiv '/'
syn match bfMod '%'
syn match bfNot '!'
syn cluster bfArithmetic contains=bfAdd,bfSub,bfMul,bfDiv,bfMod,bfNot

syn match bfPCRight  '>'
syn match bfPCLeft   '<'
syn match bfPCUp     '\^'
syn match bfPCDown   'v'
syn match bfPCRandom '?'
syn cluster bfPCDirection contains=bfPCRight,bfPCLeft,bfPCUp,bfPCDown,bfPCRandom

syn match   bfHorizontalIf '_'
syn match   bfVerticalIf   '\|'
syn cluster bfConditionalDirection contains=bfHorizontalIf,bfVerticalIf

syn region bfString start='"' end='"'

syn match   bfGetUserInt  '&'
syn match   bfGetUserChar '~'
syn cluster bfGetUser contains=bfGetUserInt,bfGetUserChar

syn match bfPrintInt '\.'
syn match bfPrintChar ','
syn cluster bfPrint contains=bfPrintInt,bfPrintChar

syn match bfPushDigit '[0-9]'

hi def link bfArithmetic Operator
