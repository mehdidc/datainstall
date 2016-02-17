#!/bin/bash

SERVER_LIST=$*
# prepare notebooks

for m in $SERVER_LIST
do
    echo $m
    #ssh -T -m "mkdir /root/.ipython"    
    #scp -r ipython/profile_nbserver $m:~/.ipython
    #CMD="openssl req -x509 -nodes -days 365 -newkey rsa:1024 -keyout /root/cert.pem -out /root/cert.pem -subj '/CN=www.mydom.com/O=My Company Name LTD./C=US'"
    #ssh -T $m "$CMD"
    #ssh -T $m "source .profile;ipython profile create nbserver"
    #scp -r ipython/profile_nbserver/ipython_notebook_config.py $m:~/.ipython/profile_nbserver/ipython_notebook_config.py
done

# Launch notebooks

for m in $SERVER_LIST
do
    echo $m
    
    #CMD="source ~/.profile;pip install jupyter;mkdir notebooks; cd notebooks; screen -m -d -S ipynb ipython notebook --config=/root/.ipython/profile_nbserver/ipython_notebook_config.py"
    #ssh -T $m "$CMD"
done

# specific
for m in $SERVER_LIST
do
    echo $m
done
