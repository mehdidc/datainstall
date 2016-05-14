#!/bin/bash

sudo apt-get -y update
sudo apt-get -y dist-upgrade
sudo apt-get -y update
sudo apt-get install -y apt-utils
sudo apt-get install -y vim
sudo apt-get install -y git
sudo apt-get install -y htop
sudo apt-get install -y mc 
sudo apt-get install -y -qq libcurl4-openssl-dev build-essential 
sudo apt-get install -y default-jre
sudo apt-get install -y wget
sudo apt-get install -y zsh
sudo apt-get install -y cmake
sudo apt-get install -y libreadline-dev

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
chsh $USER -s /bin/zsh
cp -f ~/dotfiles/.zshrc ~

pip install git+git://github.com/jcrudy/py-earth

pip install xgboost

pip install pyzmq networkx hyperopt
pip install git+https://github.com/sfalkner/pynisher git+https://github.com/sfalkner/pysmac

pip install -U gitpython

# databoard
pip install -r databoard_requirements.txt

pip install nose
pip install scikit-neuralnetwork
pip install supersmoother
pip install gatspy
pip install FATS
pip install mlxtend
pip install statsmodels
pip install seaborn
pip install geopy
pip install holidays

source  ~/rcfiles/install_neuralnets
