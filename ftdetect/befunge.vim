if exists('b:did_befunge_ftplugin') | finish | endif
let b:did_befunge_ftplugin = 1

au BufRead,BufNewFile *.bf setfiletype befunge
