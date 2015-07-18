#!/bin/bash
SERVER_LIST=()

# install everything

for m in $SERVER_LIST
do
    echo $m
    scp -r rcfiles/ $m:~
    scp -r dotfiles/ $m:~
    ssh -T $m "cd rcfiles;screen -m -d -S installer bash install_everythin.sh"
done

# prepare notebooks

for m in $SERVER_LIST
do
    echo $m
    #ssh -T -m "mkdir /root/.ipython"    
    #scp -r ipython/profile_nbserver $m:~/.ipython
    #CMD="openssl req -x509 -nodes -days 365 -newkey rsa:1024 -keyout /root/cert.pem -out /root/cert.pem -subj '/CN=www.mydom.com/O=My Company Name LTD./C=US'"
    #ssh -T $m "$CMD"
    #scp -r ipython/profile_nbserver/ipython_notebook_config.py $m:~/.ipython/profile_nbserver/ipython_notebook_config.py
done



# Launch notebooks

for m in $SERVER_LIST
do
    echo $m
    #CMD="source ~/.profile;mkdir notebooks; cd notebooks; screen -m -d -S ipynb ipython notebook --profile=nbserver"
    #ssh -T $m "$CMD"
done

# specific
for m in $SERVER_LIST
do
    echo $m
#     scp -r $m:~/notebooks ~/work/archives/notebooks_$m
#      ssh -T $m "source ~/.profile;pip uninstall -y lasagne"
#     ssh -T $m "apt-get update;apt-get install build-essential"
##     scp ~/Bureau/nnExercise-b.ipynb $m:~/notebooks/nnExercise.ipynb
#     scp ~/Bureau/train.csv $m:~/notebooks
done

