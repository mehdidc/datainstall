#!/bin/sh
FOLDER=/root/rcfiles
apt-get update
apt-get install -y git
apt-get install -y htop
apt-get install -y mc 
apt-get install -y -qq libcurl4-openssl-dev 
apt-get install -y build-essential 
apt-get install -y default-jre
apt-get install -y git
apt-get install -y zsh
apt-get install -y cmake
apt-get install -y vim
wget --no-check-certificate http://install.ohmyz.sh -O - | sh
chsh -s /bin/zsh


conda install --file $FOLDER/conda_requirements.txt


#cp -f ~/dotfiles/.* ~
pip install git+git://github.com/jcrudy/py-earth
pip install pyzmq networkx hyperopt
pip install git+https://github.com/sfalkner/pynisher git+https://github.com/sfalkner/pysmac
pip install -U gitpython
pip install -r $FOLDER/databoard_requirements.txt
pip install git+git://github.com/mehdidc/urlcache

bash $FOLDER/install_neuralnets
#bash $FOLDER/install_xgboost

#cmaes
conda install boost
conda install -c https://conda.anaconda.org/meznom boost-python
conda config --add channels meznom
conda install -c https://conda.anaconda.org/mehdidc cmaes

