LOAD DATA
INFILE '/home/dbdbdeep/work/TPC/TPC-H/csv/nation.csv'
LOGFILE 'nation.log'
BADFILE 'nation.bad'
APPEND
INTO TABLE nation
FIELDS TERMINATED BY '|'
       OPTIONALLY ENCLOSED BY ''
       ESCAPED BY '\n'
LINES TERMINATED BY '\n'
(
	n_nationkey,
	n_name,
	n_regionkey,
	n_comment
)

