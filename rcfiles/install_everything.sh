#!/bin/bash

apt-get update
apt-get dist-upgrade -y
apt-get update
apt-get install -y apt-utils
apt-get install -y vim
apt-get install -y git
apt-get install -y htop
apt-get install -y mc 
apt-get install -y -qq libcurl4-openssl-dev build-essential 
apt-get install -y default-jre
apt-get install -y wget
apt-get install -y zsh
apt-get install -y cmake
apt-get install -y libreadline-dev

cp -f ~/dotfiles/.* ~
# miniconda
wget https://repo.continuum.io/miniconda/Miniconda-latest-Linux-x86_64.sh --output-document=miniconda.sh
chmod +x miniconda.sh
./miniconda.sh -b
source  ~/.profile
conda create --yes -n databoard-env python=2.7 --file conda_requirements.txt -c https://conda.binstar.org/auto -c https://conda.binstar.org/hugo
source activate databoard-env

# zsh
wget --no-check-certificate http://install.ohmyz.sh -O - | sh
chsh root -s /bin/zsh
cp -f ~/dotfiles/.zshrc ~

pip install git+git://github.com/jcrudy/py-earth

pip install xgboost

apt-get install -y git

pip install pyzmq networkx hyperopt
pip install git+https://github.com/sfalkner/pynisher git+https://github.com/sfalkner/pysmac

pip install -U gitpython

# databoard
pip install -r databoard_requirements.txt

# conda install boost
# conda install -c https://conda.anaconda.org/meznom boost-python
# conda config --add channels meznom
# conda install -c https://conda.anaconda.org/mehdidc cmaes
# pip install git+git://github.com/mehdidc/urlcache

pip install nose
pip install scikit-neuralnetwork
pip install supersmoother
pip install gatspy
pip install FATS
pip install mlxtend
pip install statsmodels
pip install seaborn
pip install geopy

source  ~/rcfiles/install_neuralnets

