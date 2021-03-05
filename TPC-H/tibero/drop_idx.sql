
ALTER TABLE customer DROP PRIMARY KEY CASCADE;
ALTER TABLE nation   DROP PRIMARY KEY CASCADE;
ALTER TABLE orders   DROP PRIMARY KEY CASCADE;
ALTER TABLE part     DROP PRIMARY KEY CASCADE;
ALTER TABLE partsupp DROP PRIMARY KEY CASCADE;
ALTER TABLE region   DROP PRIMARY KEY CASCADE;
ALTER TABLE supplier DROP PRIMARY KEY CASCADE;
ALTER TABLE lineitem DROP PRIMARY KEY CASCADE;

DROP INDEX customer_c_mktsegment_c_custkey_idx;
DROP INDEX customer_c_nationkey_c_custkey_idx;
DROP INDEX customer_ios_test1;
DROP INDEX lineitem_l_orderkey_l_suppkey_l_quantity_idx;
DROP INDEX lineitem_l_orderkey_idx_l_returnflag;
DROP INDEX lineitem_l_orderkey_idx_part1;
DROP INDEX lineitem_l_orderkey_idx_part2;
DROP INDEX lineitem_l_partkey_l_quantity_l_shipmode_idx;
DROP INDEX lineitem_l_partkey_l_suppkey_l_shipdate_l_quantity_idx;
DROP INDEX lineitem_l_shipdate_idx;
DROP INDEX lineitem_l_receiptdate_idx;
DROP INDEX orders_o_custkey_idx;
DROP INDEX orders_o_orderkey_o_orderdate_idx;
DROP INDEX orders_o_orderdate_idx;
DROP INDEX part_ios_test1;
DROP INDEX part_p_container_p_brand_p_partkey_idx;
DROP INDEX part_p_size_idx;
DROP INDEX part_p_type_p_partkey_idx;
DROP INDEX partsupp_ps_suppkey_idx;
DROP INDEX supplier_s_nationkey_s_suppkey_idx;
DROP INDEX supplier_s_suppkey_idx_like;

exit
