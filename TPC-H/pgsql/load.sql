--
TRUNCATE TABLE nation;
COPY nation ( n_nationkey, n_name, n_regionkey, n_comment) 
FROM '/home/tpch/BMT/csv/nation.csv' 
DELIMITER '|'
CSV;


TRUNCATE TABLE region;
COPY region ( r_regionkey, r_name, r_comment)
FROM '/home/tpch/BMT/csv/region.csv'
DELIMITER '|'
CSV;

TRUNCATE TABLE part;
COPY part ( p_partkey, p_name, p_mfgr, p_brand, p_type, p_size, p_container, p_retailprice, p_comment)
FROM '/home/tpch/BMT/csv/part.csv'
DELIMITER '|'
CSV;

TRUNCATE TABLE supplier;
COPY supplier ( s_suppkey, s_name, s_address, s_nationkey, s_phone, s_acctbal, s_comment)
FROM '/home/tpch/BMT/csv/supplier.csv'
DELIMITER '|'
CSV;

TRUNCATE TABLE partsupp;
COPY partsupp ( ps_partkey, ps_suppkey, ps_availqty, ps_supplycost, ps_comment)
FROM '/home/tpch/BMT/csv/partsupp.csv'
DELIMITER '|'
CSV;

TRUNCATE TABLE customer;
COPY customer ( c_custkey, c_name, c_address, c_nationkey, c_phone, c_acctbal, c_mktsegment, c_comment)
FROM '/home/tpch/BMT/csv/customer.csv'
DELIMITER '|'
CSV;

TRUNCATE TABLE orders;
COPY orders ( o_orderkey, o_custkey, o_orderstatus, o_totalprice, o_orderdate, o_orderpriority, o_clerk, o_shippriority, o_comment)
FROM '/home/tpch/BMT/csv/orders.csv'
DELIMITER '|'
CSV;


TRUNCATE TABLE lineitem;
COPY lineitem ( l_orderkey, l_partkey, l_suppkey, l_linenumber, l_quantity, l_extendedprice, l_discount, l_tax, l_returnflag, l_linestatus, l_shipdate, l_commitdate, l_receiptdate, l_shipinstruct, l_shipmode, l_comment)
FROM '/home/tpch/BMT/csv/lineitem.csv'
DELIMITER '|'
CSV;
