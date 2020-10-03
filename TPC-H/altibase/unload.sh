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
	iloader formout -s 127.0.0.1 -u sys -p manager -port 20300 -T $tname-f fmt/$tname.fmt
done

