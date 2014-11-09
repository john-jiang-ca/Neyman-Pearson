#!/usr/bin/expect -f
set timeout 4;
set arg [lindex $argv 0]
spawn ssh -X an.jiang@mail.mcgill.ca@van-gogh.ece.mcgill.ca
expect {
"yes/no"	{send "yes\r"; exp_continue}
"password:"	{send "wtfwtf01\r"; exp_continue}
}
interact
