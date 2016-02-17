The purpose of datainstall is to install the software needed for running a RAMP.
Currently, there are two ways to use it, either directly by ssh
(e.g onevm) or using Docker. For the ssh case, you need root (admin).
Note that datainstall currently work only on debian based systems.

## With ssh

type :

> ./install.sh onevm-xxx.lal.in2p3.fr

you can also do it on several machines:

> ./install.sh onevm-xxx.lal.in2p3.fr onevm-yyy.lal.in2p3.fr....

##  With Docker

first, you need to build the Docker image (once), then you can launch it.

### building docker image:

> docker build -t ramp . | tee log

### launch and use an instance :

> docker run -t -i ramp

### Launch Jupyter

> docker run -p 8080:8080 -t -i ramp bash -c "source ~/.profile;jupyter notebook --ip=0.0.0.0 --port=8080"
