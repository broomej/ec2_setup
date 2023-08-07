#! /usr/bin/env bash

# run with:
# sudo ./install_plink1.90.sh /home/ec2-user plink_linux_x86_64_20230116.zip

user_home=$1
plink_version=$2

cd $user_home/app
mkdir plink
cd plink

wget https://s3.amazonaws.com/plink1-assets/$plink_version
unzip $plink_version
rm $plink_version
cd /usr/bin/

ln -s $user_home/app/plink/plink plink
ln -s $user_home/app/plink/plink plink1.9
ln -s $user_home/app/plink/plink plink1.90
ln -s $user_home/app/plink/prettify prettify