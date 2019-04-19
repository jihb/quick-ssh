#!/bin/sh
HOME_DIR=${HOME}/quick-ssh
EXPECT=${HOME_DIR}/expect.sh
CONFIG_LIST=${HOME_DIR}/user.conf
echo ${HOME}
echo "\n\035[32m-------Select a server you need login-------\033[0m"
i=0
cat $CONFIG_LIST| awk 'NR>2' | while read user  server  pwd
do
    let i=$i+1
    echo "\033[33m[$i]:\033[0m\033[37m$user\033[0m\033[35m<$server>\033[0m"
done
echo "\033[32m------------------------------------------\033[0m\n"

read HOST_INDEX
let line=$HOST_INDEX+2
user=$(cat $CONFIG_LIST| awk 'NR=='$line' {print $1}')
host=$(cat $CONFIG_LIST| awk 'NR=='$line' {print $2}')
pwd=$(cat $CONFIG_LIST| awk 'NR=='$line' {print $3}')

$EXPECT $user $host $pwd
