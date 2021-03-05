LOAD DATA
INFILE '/home/dbdbdeep/work/TPC/TPC-H/csv/part.csv'
LOGFILE 'part.log'
BADFILE 'part.bad'
APPEND
INTO TABLE part
FIELDS TERMINATED BY '|'
       OPTIONALLY ENCLOSED BY ''
       ESCAPED BY '\n'
LINES TERMINATED BY '\n'
(
	p_partkey,
	p_name,
	p_mfgr,
	p_brand,
	p_type,
	p_size,
	p_container,
	p_retailprice,
	p_comment
)

