#!/bin/bash

if [ $# -lt 1 ]
then 
  echo "please list the servers along with the login, example : root@onevm-226.lal.in2p3.fr root@onevm-180.lal.in2p3.fr.... "
  exit 0
fi

SERVER_LIST=$*

for m in $SERVER_LIST
do
    echo $m
    scp -r rcfiles/ $m:~
    scp -r dotfiles/ $m:~
    ssh -T $m "screen -m -d -S installer bash -c 'cd ~/rcfiles; bash install_everything.sh|tee log'"
done
