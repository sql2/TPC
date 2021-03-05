LOAD DATA
INFILE '/home/dbdbdeep/work/TPC/TPC-H/csv/lineitem.csv'
LOGFILE 'lineitem.log'
BADFILE 'lineitem.bad'
APPEND
INTO TABLE lineitem
FIELDS TERMINATED BY '|'
       OPTIONALLY ENCLOSED BY ''
       ESCAPED BY '\n'
LINES TERMINATED BY '\n'
(
	l_orderkey,
	l_partkey,
	l_suppkey,
	l_linenumber,
	l_quantity,
	l_extendedprice,
	l_discount,
	l_tax,
	l_returnflag,
	l_linestatus,
	l_shipdate,
	l_commitdate,
	l_receiptdate,
	l_shipinstruct,
	l_shipmode,
	l_comment
)

