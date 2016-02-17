The purpose of datainstall is to bootstrap/create a machine so that it is ready-to-use for RAMPs.
Currently, there are two ways to bootstrap a machine, either directly by ssh to a machine 
(e.g onevm) or using Docker. For the ssh case, you need root (admin).
Note that datainstall currently work only on debian based systems.

## With ssh

just type :

> ./install.sh onevm-xxx.lal.in2p3.fr

you can also do it on several machines:


> ./install.sh onevm-xxx.lal.in2p3.fr onevm-yyy.lal.in2p3.fr....

##  With Docker

first, you need to build the Docker image (once), then you can launch it.

### building docker image:

> docker build -t ramp . | tee log

### launch and use an instance :

> docker run -v -t -i ramp
