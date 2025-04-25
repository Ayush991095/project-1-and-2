create database retail_store;

use retail_store;

select * from retail_transactions_sample;

delete from retail_transactions_sample
where transaction_id is null or sale_price is null
;


select * from retail_transactions_sample

-- Profit margin by category and sub_category

select category,sub_category,sum(sale_price-cost_price) as total_profit,
ROUND(SUM(sale_price - cost_price) / SUM(sale_price), 2) AS profit_margin
from retail_transactions_sample
group by category, sub_category
order by profit_margin asc
