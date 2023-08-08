#! /usr/bin/env bash

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