select
	sum(l_extendedprice * l_discount) as revenue
from
	lineitem
where
	l_shipdate >= to_date('1994-01-01','YYYY-MM-DD')
	and l_shipdate < dateadd(to_date('1994-01-01','YYYY-MM-DD'),+1,'YEAR')
	and l_discount between .06 - .01 and .06 + .01
	and l_quantity < 24;
