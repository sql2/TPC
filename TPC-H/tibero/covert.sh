#!/bin/bash

for i in `ls ../csv/*.tbl`
do
	sed 's/|$//' $i > ${i/tbl/csv}; 
	echo $i; 
done;
