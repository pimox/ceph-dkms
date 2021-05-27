#! /bin/sh

DROOT="default-src"
ROOT="/usr/src/linux-$(uname -r)"
if [ ! -d ${ROOT} ]; then
  echo "*** Failed to find linux kernel source code at ${ROOT} - using default ***"
  ROOT=$DROOT
fi

mkdir -p src/net/ceph src/fs/ceph src/drivers/block
cp -R ${ROOT}/net/ceph/* src/net/ceph
cp -R ${ROOT}/fs/ceph/* src/fs/ceph
cp -R ${ROOT}/drivers/block/rbd* src/drivers/block
cp -R ${DROOT}/drivers/block/Makefile src/drivers/block
