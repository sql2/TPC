select
	o_orderpriority,
	count(*) as order_count
from
	orders
where
	o_orderdate >= to_date('1993-07-01', 'YYYY-MM-DD')
	and o_orderdate < dateadd(to_date('1993-07-01', 'YYYY-MM-DD'), +3, 'MONTH')
	and exists (
		select
			*
		from
			lineitem
		where
			l_orderkey = o_orderkey
			and l_commitdate < l_receiptdate
	)
group by
	o_orderpriority
order by
	o_orderpriority;
