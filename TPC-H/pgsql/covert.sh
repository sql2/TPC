#!/bin/bash

for i in `ls ../csv/*.tbl`
do
	# sed 's/|$//' $i > ${i/tbl/csv}; 
	sed -i 's/|$//' $i
	echo $i
done
