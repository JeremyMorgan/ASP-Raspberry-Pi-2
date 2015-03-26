#!/bin/sh
CERTMGR=/usr/bin/certmgr
sudo $CERTMGR -ssl -m https://go.microsoft.com
sudo $CERTMGR -ssl -m https://nugetgallery.blob.core.windows.net
sudo $CERTMGR -ssl -m https://nuget.org

sudo mozroots --import --machine --sync 
