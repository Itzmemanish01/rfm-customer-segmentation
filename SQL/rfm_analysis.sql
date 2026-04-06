create database retail_rfm;
use retail_rfm;


ALTER TABLE retail_data
ADD COLUMN invoice_date DATE,
ADD COLUMN invoice_time TIME;

update retail_data
set
invoice_date = SUBSTRING_INDEX(invoicedate,' ',1),
invoice_time = SUBSTRING_INDEX(invoicedate,' ',-1);

alter table retail_data
drop column invoicedate;

alter table retail_data
add column recency int;

UPDATE retail_data r
JOIN (SELECT `Customer ID`, 
DATEDIFF((SELECT MAX(Invoice_Date) FROM retail_data) + INTERVAL 1 DAY,MAX(Invoice_Date)) AS rec
FROM retail_data
GROUP BY `Customer ID`
) t
ON r.`Customer ID` = t.`Customer ID`
SET r.Recency = t.rec;

alter table retail_data
add column frequency int;

UPDATE retail_data r
JOIN (
    SELECT 
        `Customer ID`,
        COUNT(DISTINCT Invoice) AS freq
    FROM retail_data
    GROUP BY `Customer ID`
) t
ON r.`Customer ID` = t.`Customer ID`
SET r.frequency = t.freq;

alter table retail_data
add column total_price decimal(2);

ALTER TABLE retail_data
MODIFY total_price DECIMAL(15,2);

update retail_data r
join (
select `customer id`, sum(`total price`) as t_price 
from retail_data
group by `customer id`) t
on r.`customer id` = t.`customer id`
set r.total_price = t.t_price;

create table retail_analysis as
select distinct `customer id`, max(recency), max(frequency),
sum(`total price`) as monetary 
from retail_data
group by `customer id`;