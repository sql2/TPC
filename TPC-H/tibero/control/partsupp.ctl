LOAD DATA
INFILE '/home/dbdbdeep/work/TPC/TPC-H/csv/partsupp.csv'
LOGFILE 'partsupp.log'
BADFILE 'partsupp.bad'
APPEND
INTO TABLE partsupp
FIELDS TERMINATED BY '|'
       OPTIONALLY ENCLOSED BY ''
       ESCAPED BY '\n'
LINES TERMINATED BY '\n'
(
	ps_partkey,
	ps_suppkey,
	ps_availqty,
	ps_supplycost,
	ps_comment
)

