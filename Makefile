all:	deb

deb:	builddir
	cd build ; dpkg-buildpackage -b -uc -us

builddir:
	rm -rf build
	mkdir build
	cp -a src build
	cp -R debian build
