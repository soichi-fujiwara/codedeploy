#!/bin/bash
prefix='/home/ec2-user/'

sudo yum -y groupinstall 'Development tools'
sudo yum -y install zlib-devel openssl-devel

mkdir ${prefix}python3.6
cd ${prefix}python3.6
wget https://www.python.org/ftp/python/3.6.1/Python-3.6.1.tgz
tar zxvf Python-3.6.1.tgz
cd ${prefix}/python3.6/Python-3.6.1
./configure
make
sudo make install

sudo /usr/local/bin/pip3.6 install virtualenv
/usr/local/bin/virtualenv -p /usr/local/bin//python3.6 ${prefix}encrypt_3
/usr/local/bin/virtualenv -p /usr/bin/python2.7 ${prefix}encrypt_2

cd ${prefix}
mkdir lambda_set
