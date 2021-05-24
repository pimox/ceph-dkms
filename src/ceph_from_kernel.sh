#! /bin/sh

ROOT="/usr/src/linux-$(uname -r)"
if [ ! -d ${ROOT} ]; then
  echo "*** Failed to find linux kernel source code at ${ROOT} - using default ***"
  ROOT="default-src"
fi

mkdir -p src/net/ceph src/fs/ceph
cp -R ${ROOT}/net/ceph/* src/net/ceph
cp -R ${ROOT}/fs/ceph/* src/fs/ceph
