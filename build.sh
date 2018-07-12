#!/bin/sh
groupadd build -g `stat /build/ --format=%g`
useradd -u `stat /build/ --format=%u` -g build build 
sudo -H -E -u build /build-rpm.sh
