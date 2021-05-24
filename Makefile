export CONFIG_CEPH_LIB=m
export CONFIG_CEPH_FS=m

obj-m := src/net/ceph/ src/fs/ceph/
