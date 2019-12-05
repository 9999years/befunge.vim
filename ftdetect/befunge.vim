if exists('b:did_befunge_ftdetect') | finish | endif
let b:did_befunge_ftdetect = 1

au BufRead,BufNewFile *.bf setfiletype befunge
