#!/bin/zsh
rm -rf out/cropped
mkdir out/cropped
files=`ls -l | grep .jpeg`
for file in out/raw/*.jpeg
do
        name=${file}
        name=${name##*/}
        name=${name%.jpeg}
	echo " + cropping ${file}"
	/usr/local/bin/convert out/raw/${name}.jpeg -crop 1520x1200+89+507 out/cropped/${name}.jpeg
done
