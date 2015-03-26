#!/bin/sh
mkdir ~/sources
mkdir ~/sources/aspnet5 
cd ~/sources/aspnet5
git clone git://github.com/aspnet/home.git
sh ~/sources/aspnet5/home/kvminstall.sh
source ~/.k/kvm/kvm.sh
kvm upgrade
