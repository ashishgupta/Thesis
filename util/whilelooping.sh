#!/bin/bash
#testing loops
numchapters=7
count=1
while [ $count -le $numchapters ]
do
	chaptername="chapter$count"
	echo $chaptername
	count=$(( $count + 1 ))
done
