apt-get update
apt-get dist-upgrade -y
apt-get update
apt-get install -y vim
apt-get install -y git
apt-get install -y htop
apt-get install -y mc 
apt-get install -y -qq libcurl4-openssl-dev build-essential 
apt-get install -y default-jre

cp -f ~/dotfiles/.* ~
# miniconda
wget https://repo.continuum.io/miniconda/Miniconda-latest-Linux-x86_64.sh
chmod +x Miniconda-latest-Linux-x86_64.sh 
./Miniconda-latest-Linux-x86_64.sh -b
. ~/.profile
conda create --yes -n databoard-env python=2.7 --file conda_requirements.txt -c https://conda.binstar.org/auto -c https://conda.binstar.org/hugo
source activate databoard-env

# zsh
apt-get install -y zsh
wget --no-check-certificate http://install.ohmyz.sh -O - | sh
chsh root -s /bin/zsh

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


source install_neuralnets