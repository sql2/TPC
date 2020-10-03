#!/bin/bash

rm -f output.log

for N in {1..22}
do
	time is -f ./query/${N}.sql >> output.log

done
