ALTER TABLE customer DROP PRIMARY KEY; 
ALTER TABLE nation DROP PRIMARY KEY; 
ALTER TABLE orders DROP PRIMARY KEY; 
ALTER TABLE PART DROP PRIMARY KEY; 
ALTER TABLE partsupp DROP PRIMARY KEY; 
ALTER TABLE region DROP PRIMARY KEY; 
ALTER TABLE supplier DROP PRIMARY KEY; 
ALTER TABLE lineitem DROP PRIMARY KEY; 

DROP INDEX customer_c_mktsegment_c_custkey_idx ON customer; 
DROP INDEX customer_c_nationkey_c_custkey_idx ON customer; 
DROP INDEX customer_ios_test1 ON customer; 
DROP INDEX lineitem_l_orderkey_l_suppkey_l_quantity_idx ON lineitem; 
DROP INDEX lineitem_l_orderkey_idx_l_returnflag ON lineitem; 
DROP INDEX lineitem_l_orderkey_idx_part1 ON lineitem; 
DROP INDEX lineitem_l_orderkey_idx_part2 ON lineitem; 
DROP INDEX lineitem_l_partkey_l_quantity_l_shipmode_idx ON lineitem; 
DROP INDEX lineitem_l_partkey_l_suppkey_l_shipdate_l_quantity_idx ON lineitem; 
DROP INDEX lineitem_l_shipdate_idx ON lineitem; 
DROP INDEX lineitem_l_receiptdate_idx ON lineitem; 
DROP INDEX orders_o_custkey_idx ON orders; 
DROP INDEX orders_o_orderkey_o_orderdate_idx ON orders; 
DROP INDEX orders_o_orderdate_idx ON orders; 
DROP INDEX part_ios_test1 ON PART; 
DROP INDEX part_p_container_p_brand_p_partkey_idx ON PART; 
DROP INDEX part_p_size_idx ON PART; 
DROP INDEX part_p_type_p_partkey_idx ON PART; 
DROP INDEX partsupp_ps_suppkey_idx ON partsupp; 
DROP INDEX supplier_s_nationkey_s_suppkey_idx ON supplier; 
DROP INDEX supplier_s_suppkey_idx_like ON supplier; 
