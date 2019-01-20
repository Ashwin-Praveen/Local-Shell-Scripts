#!/bin/sh 
for i 
do 
	echo "echo The $i file is created.\n"
	echo "cat>$i <<'END'"
	cat $i 
	echo "END"
done
