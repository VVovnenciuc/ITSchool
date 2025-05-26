#! /bin/bash

for f in *.sh; do
	echo "md5sum: " 
	md5sum $f
	echo "sha256sum: " 
	sha256sum $f
done
