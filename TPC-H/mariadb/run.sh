#!/bin/bash

rm -f output.log

for N in {1..22}
do
	time mysql -uroot -proot -D tpch < ./query/${N}.sql >> output.log
done
