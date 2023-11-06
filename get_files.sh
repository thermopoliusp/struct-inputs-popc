#! /bin/bash

git clone https://github.com/thermopoliusp/Bilayers
git clone https://github.com/pedro-callil/make-gmx

for dir in {W02,W14,W26,W38,W50,H14,H26,H38}
do
	cp make-gmx/Makefile $dir/
	cp -r /tmp/Bilayers/PACKMOL\ files/molecules $dir/molecules/
	cp -r /tmp/Bilayers/GROMACS\ files/Force\ field/ $dir/ff/
	cd $dir
	make
	cd ..
done

