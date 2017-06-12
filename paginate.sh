#!/bin/zsh
rm -rf out/paginated
mkdir out/paginated
files=`ls -l | grep .jpeg`
for file in out/cropped/*.jpeg
do
	name=${file}
	name=${name##*/}
	name=${name%.jpeg}
	echo " + paginating ${name}"
	/usr/local/bin/convert ${file} -crop 760x1200+0+0 out/paginated/${name}-1.jpeg
	/usr/local/bin/convert ${file} -crop 760x1200+760+0 out/paginated/${name}-2.jpeg
done
