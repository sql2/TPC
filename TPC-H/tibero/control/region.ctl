LOAD DATA
INFILE '/home/dbdbdeep/work/TPC/TPC-H/csv/region.csv'
LOGFILE 'region.log'
BADFILE 'region.bad'
APPEND
INTO TABLE region
FIELDS TERMINATED BY '|'
       OPTIONALLY ENCLOSED BY ''
       ESCAPED BY '\n'
LINES TERMINATED BY '\n'
(
	r_regionkey,
	r_name,
	r_comment
)

