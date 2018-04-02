#!/usr/bin/expect

set timeout 3

set user [lindex $argv 0]
set host [lindex $argv 1]
set pwd  [lindex $argv 2]

spawn ssh $user@$host

expect {
    "password:" {send "$pwd\n"}
}
interact