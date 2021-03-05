LOAD DATA
INFILE '/home/dbdbdeep/work/TPC/TPC-H/csv/customer.csv'
LOGFILE 'customer.log'
BADFILE 'customer.bad'
APPEND
INTO TABLE customer
FIELDS TERMINATED BY '|'
       OPTIONALLY ENCLOSED BY ''
       ESCAPED BY '\n'
LINES TERMINATED BY '\n'
(
	c_custkey,
	c_name,
	c_address,
	c_nationkey,
	c_phone,
	c_acctbal,
	c_mktsegment,
	c_comment
)

