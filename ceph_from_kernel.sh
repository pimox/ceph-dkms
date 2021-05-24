#! /bin/sh

ROOT=/usr/src/linux-$(uname -r)/

mkdir -p src/net/ceph src/fs/ceph
cp -R ${ROOT}net/ceph/* src/net/ceph
cp -R ${ROOT}fs/ceph/* src/fs/ceph
