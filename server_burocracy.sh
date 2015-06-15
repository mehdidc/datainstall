#!/bin/bash
# 10001  stratus-run-instance BJILII-tFu00rKKM-enj9l83rsn --cpu=27 --ram 58000 --swap=5000
# 10002  stratus-run-instance BJILII-tFu00rKKM-enj9l83rsn --cpu=26 --ram 19500 --swap=5000 --volatile-disk=20
# 10003  stratus-run-instance BJILII-tFu00rKKM-enj9l83rsn --cpu=21 --ram 32400 --swap=5000 --volatile-disk=20
# 10006  stratus-run-instance BJILII-tFu00rKKM-enj9l83rsn --cpu=14 --ram 17000 --swap=5000 --volatile-disk=20
# 10007  stratus-run-instance BJILII-tFu00rKKM-enj9l83rsn --cpu=13 --ram 8400 --swap=5000 --volatile-disk=20
# 10008  stratus-run-instance BJILII-tFu00rKKM-enj9l83rsn --cpu=13 --ram 10400 --swap=5000 --volatile-disk=20

# 7155 Running   27   59392000  4    onevm-54.lal.in2p3.fr   one-7155
# 7156 Running   26   19968000  3    onevm-55.lal.in2p3.fr   one-7156
# 7157 Running   21   33177600  4    onevm-57.lal.in2p3.fr   one-7157
# 7158 Running   14   17408000  2    onevm-58.lal.in2p3.fr   one-7158
# 7159 Running   13   8601600   6    onevm-64.lal.in2p3.fr   one-7159
# 7161 Running   13   0         0    onevm-68.lal.in2p3.fr   one-7161

# 7156 7157 7158 7159 7160 

SERVER_LIST=(239 100 107 111 115 116)
# SERVER_LIST="55"

# for m in $SERVER_LIST
# do
#     echo "[+] onevm-$m.lal.in2p3.fr"
#     ssh-keyscan onevm-$m.lal.in2p3.fr >> ~/.ssh/known_hosts
#     ssh -T onevm-$m.lal.in2p3.fr "fdisk -l"
#     ssh -T onevm-$m.lal.in2p3.fr "mkfs.ext4 /dev/vdc"
#     ssh -T onevm-$m.lal.in2p3.fr "mkdir /mnt/RAMP"
#     ssh -T onevm-$m.lal.in2p3.fr "mount /dev/vdc /mnt/RAMP"
#     scp install_everything.sh install-torch-deps onevm-$m.lal.in2p3.fr:
#     ssh -T onevm-$m.lal.in2p3.fr "mkdir .ipython"
#     scp -r profile_nbserver onevm-$m.lal.in2p3.fr:.ipython/profile_nbserver
#     ssh -T onevm-$m.lal.in2p3.fr "screen -m -d -S install_everything bash install_everything.sh"
# done

for m in $SERVER_LIST
do
#    echo "[+] onevm-$m.lal.in2p3.fr"
#    scp -r rcfiles/ onevm-$m.lal.in2p3.fr:~
#    scp -r dotfiles/ onevm-$m.lal.in2p3.fr:~
#     scp -r ipython/profile_nbserver onevm-$m.lal.in2p3.fr:~/.ipython
#    ssh -T onevm-$m.lal.in2p3.fr "cd rcfiles;screen -m -d -S installer bash install_everythin.sh"
done

for m in $SERVER_LIST
do
    echo "[+] onevm-$m.lal.in2p3.fr"
    #CMD="openssl req -x509 -nodes -days 365 -newkey rsa:1024 -keyout /root/cert.pem -out /root/cert.pem -subj '/CN=www.mydom.com/O=My Company Name LTD./C=US'"
    #ssh -T onevm-$m.lal.in2p3.fr "$CMD"
    scp -r ipython/profile_nbserver/ipython_notebook_config.py onevm-$m.lal.in2p3.fr:~/.ipython/profile_nbserver/ipython_notebook_config.py
    CMD="mkdir notebooks; cd notebooks; screen -m -d -S ipynb ipython notebook --profile=nbserver"
    ssh -T onevm-$m.lal.in2p3.fr "$CMD"
done

# for m in $SERVER_LIST
# do
#     echo "[+] onevm-$m.lal.in2p3.fr"
    # scp -r *.ipynb onevm-$m.lal.in2p3.fr:/mnt/datacamp/astro
    # screen -m -d -S ipynb ipython notebook --profile=nbserver
    # CMD="mkdir /mnt/datacamp/astro ; cd /mnt/datacamp/astro ;"
    # ssh -T onevm-$m.lal.in2p3.fr "$CMD"
# done


# anaconda
# user_test_model
# data
