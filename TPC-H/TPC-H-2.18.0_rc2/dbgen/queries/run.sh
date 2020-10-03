#!/bin/bash

for i in {1..22}
do
	../qgen -d $i > ../sql/$i.sql
done
