LOAD DATA
INFILE '/home/dbdbdeep/work/TPC/TPC-H/csv/supplier.csv'
LOGFILE 'supplier.log'
BADFILE 'supplier.bad'
APPEND
INTO TABLE supplier
FIELDS TERMINATED BY '|'
       OPTIONALLY ENCLOSED BY ''
       ESCAPED BY '\n'
LINES TERMINATED BY '\n'
(
	s_suppkey,
	s_name,
	s_address,
	s_nationkey,
	s_phone,
	s_acctbal,
	s_comment
)

