#!/bin/sh
sudo apt-get install gyp
wget http://dist.libuv.org/dist/v1.0.0-rc1/libuv-v1.0.0-rc1.tar.gz 
tar -xvf libuv-v1.0.0-rc1.tar.gz
cd libuv-v1.0.0-rc1/
./gyp_uv.py -f make -Duv_library=shared_library
make -C out
sudo cp out/Debug/lib.target/libuv.so /usr/lib/libuv.so.1.0.0-rc1
sudo ln -s libuv.so.1.0.0-rc1 /usr/lib/libuv.so.1
