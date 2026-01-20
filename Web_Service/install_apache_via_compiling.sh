#!/bin/sh
export APACHE_SOURCE

 read -p " apache source file 다운로드 링크"

wget APACHE_SOURCE

COMPRESSED= $(ls -l | grep "tar")

if(COMPRESSED is contain .tar.gz)
	tar -xvf COMPRESSED
elif COMPRESSED tar.bz 이면)
	tar -xJf COMPRESSED

endif
