#!/bin/bash

createdb tpch

psql -f ../schema/dss.ddl -d tpch
