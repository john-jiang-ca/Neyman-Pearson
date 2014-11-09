#!/usr/bin/expect
set arg1 [lindex $argv 0]
set arg2 [lindex $argv 1]
eval spawn ssh an.jiang@mail.mcgill.ca@van-gogh.ece.mcgill.ca
#use correct prompt
set prompt ":|#|\\\$"
interact -o -nobuffer -re $prompt return
send "wtfwtf01\r"
interact -o -nobuffer -re $prompt return
send "lpr -o page-ranges=$arg1-$arg2 temp/Thesis.pdf\r"
interact -o -nobuffer -re $prompt return
send "exit\r"
interact
