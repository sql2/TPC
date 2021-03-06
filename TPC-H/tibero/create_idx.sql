ALTER TABLE customer ADD CONSTRAINT pk_customer PRIMARY KEY (c_custkey);
ALTER TABLE lineitem ADD CONSTRAINT pk_lineitem PRIMARY KEY (l_orderkey, l_linenumber);
ALTER TABLE nation ADD CONSTRAINT pk_nation PRIMARY KEY (n_nationkey);
ALTER TABLE orders ADD CONSTRAINT pk_orders PRIMARY KEY (o_orderkey);
ALTER TABLE part ADD CONSTRAINT pk_part PRIMARY KEY (p_partkey);
ALTER TABLE partsupp ADD CONSTRAINT pk_partsupp PRIMARY KEY (ps_partkey, ps_suppkey);
ALTER TABLE region ADD CONSTRAINT pk_region PRIMARY KEY (r_regionkey);
ALTER TABLE supplier ADD CONSTRAINT pk_supplier PRIMARY KEY (s_suppkey);

CREATE INDEX customer_c_mktsegment_c_custkey_idx ON customer (c_mktsegment, c_custkey);
CREATE INDEX customer_c_nationkey_c_custkey_idx ON customer (c_nationkey, c_custkey);
CREATE INDEX customer_ios_test1 ON customer (substring(c_phone from 1 for 2), c_acctbal, c_custkey);
CREATE INDEX lineitem_l_orderkey_l_suppkey_l_quantity_idx ON lineitem (l_orderkey, l_suppkey, l_quantity);
CREATE INDEX lineitem_l_orderkey_idx_l_returnflag ON lineitem (l_orderkey);
CREATE INDEX lineitem_l_orderkey_idx_part1 ON lineitem (l_orderkey, l_suppkey); -- Q4,Q21
--CREATE INDEX lineitem_l_orderkey_idx_part2 ON lineitem (l_orderkey);
CREATE INDEX lineitem_l_partkey_l_quantity_l_shipmode_idx ON lineitem (l_partkey, l_quantity, l_shipmode);
CREATE INDEX lineitem_l_partkey_l_suppkey_l_shipdate_l_quantity_idx ON lineitem (l_partkey, l_suppkey, l_shipdate, l_quantity);
CREATE INDEX lineitem_l_shipdate_idx ON lineitem (l_shipdate);
CREATE INDEX lineitem_l_receiptdate_idx ON lineitem (l_receiptdate);
CREATE INDEX orders_o_custkey_idx ON orders (o_custkey);
CREATE INDEX orders_o_orderkey_o_orderdate_idx ON orders (o_orderkey, o_orderdate);
CREATE INDEX orders_o_orderdate_idx ON orders (o_orderdate);
CREATE INDEX part_ios_test1 ON part (p_size, p_partkey, p_brand, p_type);
CREATE INDEX part_p_container_p_brand_p_partkey_idx ON part(p_container, p_brand, p_partkey);
CREATE INDEX part_p_size_idx ON part (p_size);
CREATE INDEX part_p_type_p_partkey_idx ON part(p_type, p_partkey);
CREATE INDEX partsupp_ps_suppkey_idx ON partsupp (ps_suppkey);
CREATE INDEX supplier_s_nationkey_s_suppkey_idx ON supplier (s_nationkey, s_suppkey);
CREATE INDEX supplier_s_suppkey_idx_like ON supplier (s_suppkey);

exit
