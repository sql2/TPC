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

for tname in ${tname_list[@]}
do
	tbloader userid=sys/tibero control=./control/${tname}.ctl \
		direct=y rows=10000 readsize=2097152 parallel=4 bindsize=2097152
done

