#!/usr/bin/bash

echo "Running patches now."
latest_busybox=$(ls -1d output/build/busy* | tail -1)
cp board/d-tacq/acq400/busybox.config $latest_busybox/.config
cd $latest_busybox
echo $PWD
patch -p1 < ../../../board/d-tacq/acq400/umon.patch
cd ../../..
wget http://www.d-tacq.com/tmp/libreadline.tgz
tar xvzf  libreadline.tgz
echo "Finished patches now."

echo "For patches to be implemented please run 'make' again."

