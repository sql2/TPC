#!/bin/bash

tname_list=(
 customer
 lineitem
 nation
 orders
 part
 partsupp
 region
 supplier
)

#is -f ../schema/dss.ddl

# iloader in -s 192.168.1.71 -u sys -p manager -port 20594 -f dept.fmt -d dept.dat -mode replace

for tname in ${tname_list[@]}
do
	iloader in -s 127.0.0.1 -u sys -p manager -port 20300 -f fmt/$tname.fmt -d ../csv/$tname.csv \
	-silent -t "|" -commit 10000 -array 100 -mode replace -parallel 4 -direct
done



