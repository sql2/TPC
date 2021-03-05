#!/bin/bash

rm -f output.log

for N in {1..22}
do
	time cat ./query/${N}.sql | tbsql sys/tibero >> output.log

done
