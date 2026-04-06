use retail_rfm;

select count(`customer id`)
from retail_clean_data
group by segment;

select avg(Recency), avg(Frequency), avg(Monetary)
from retail_clean_data
group by segment;

select sum(monetary)
from retail_clean_data
group by segment;

select `customer id`
from retail_clean_data
order by monetary desc
limit 10;

select segment, avg(Frequency) as Frequency
from retail_clean_data
group by segment
order by Frequency desc
limit 1;