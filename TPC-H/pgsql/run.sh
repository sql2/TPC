#!/bin/bash

rm -f output.log

for N in {1..22}
do
	time psql tpch -f ./query/${N}.sql >> output.log

done
