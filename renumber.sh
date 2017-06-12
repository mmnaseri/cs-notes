#!/bin/zsh
for file in out/raw/*.jpeg
do
	name=${file}
	name=${name##*/}
	name=${name%.jpeg}
	name=`echo ${name} | cut -c9-`
	if [ -z "${name}" ];
	then
		name="1"
	fi
	name=`printf "%04d" ${name}`
	mv ${file} out/raw/${name}.jpeg
done
