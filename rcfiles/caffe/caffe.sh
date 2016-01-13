#!/bin/sh

ANACONDA=/root/miniconda2
BUILD_DIR=/root/build

sed "s#ANACONDA_TEMPLATE#$ANACONDA#" Makefile.config
apt-get install -y libgoogle-glog-dev libprotobuf-dev libgflags-dev libopencv-dev libleveldb-dev liblmdb-dev libhdf5-serial-dev libsnappy-dev libboost-dev cmake libboost-system-dev libboost-thread-dev protobuf-compiler libboost-python1.54-dev
export LD_LIBRARY_PATH=$ANACONDA/lib:$LD_LIBRARY_PATH

mkdir -p $BUILD_DIR
cd $BUILD_DIR
git clone https://github.com/BVLC/caffe
cd caffe
make all -j20
make pycaffe -j20
CAFFE=/root/build/caffe/python/caffe
ln -s CAFFE $ANACONDA/envs/databoard-env/lib/python2.7/site-packages
conda install scikit-mage
pip install protobuf
