#!/bin/sh
HOME_DIR=${HOME}/quick-ssh
EXPECT=${HOME_DIR}/expect.sh
CONFIG_LIST=${HOME_DIR}/user.conf
echo ${HOME}
echo "\n\033[32m-------Select a host you need login-------\033[0m"
i=0
cat $CONFIG_LIST| awk 'NR>2' | while read user  host  pwd
do
    let i=$i+1
    echo "\033[33m[$i]:\033[0m\033[37m$user\033[0m\033[35m<$host>\033[0m"
done
echo "\033[32m------------------------------------------\033[0m\n"

read HOST_INDEX
let line=$HOST_INDEX+2
user=$(cat $CONFIG_LIST| awk 'NR=='$line' {print $1}')
host=$(cat $CONFIG_LIST| awk 'NR=='$line' {print $2}')
pwd=$(cat $CONFIG_LIST| awk 'NR=='$line' {print $3}')

echo $pwd
#echo "\033[37m$user\033[0m\033[35m<$host>\033[0m\033[35m<$pwd>\033[0m"
#$EXPECT $user $host $pwd