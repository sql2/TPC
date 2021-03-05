LOAD DATA
INFILE '/home/dbdbdeep/work/TPC/TPC-H/csv/orders.csv'
LOGFILE 'orders.log'
BADFILE 'orders.bad'
APPEND
INTO TABLE orders
FIELDS TERMINATED BY '|'
       OPTIONALLY ENCLOSED BY ''
       ESCAPED BY '\n'
LINES TERMINATED BY '\n'
(
	o_orderkey,
	o_custkey,
	o_orderstatus,
	o_totalprice,
	o_orderdate,
	o_orderpriority,
	o_clerk,
	o_shippriority,
	o_comment
)

