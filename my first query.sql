SELECT SKU, SKU_Description, Department,Buyer FROM SKU_DATA;
SELECT * FROM SKU_DATA;
SELECT Department, Buyer FROM SKU_DATA;
SELECT Buyer, Department FROM SKU_DATA;
/* *** sql-query-CH02-05 *** */
SELECT distinct Buyer,Department from SKU_DATA;
SELECT  Buyer,Department 
from SKU_DATA
LIMIT 5;
SELECT *
FROM sku_data
where Department = 'Water sports';
select * 
from OrderItem
-- where ExtendedPrice  >= 100 AND ExtendedPrice <= 200 
where CAST(ExtendedPrice AS decimal) between 100 and 200
ORDER BY ExtendedPrice ASC;
-- select Department
-- from INFORMATION_SCHEMA.COLUMNS
-- where TABLE_NAME = 'sku_data'
-- and COLUMN_NAME like '%pete%';
SELECT *
FROM sku_data
where Buyer like '%pete%';
select *
from sku_data
where sku_description like '%Tent%';
select *
from SKU_DATA
where SKU like '%2%';
select *
from CATALOG_SKU_2017
where CatalogPage is null;
select sum(OrderTotal) As OrderSum
from RETAIL_ORDER;
SELECT 
sum(ExtendedPrice) as OrderItemSum,
avg(ExtendedPrice) as OrderItemAvg,
min(ExtendedPrice) as OrderItemMin,
max(ExtendedPrice) as OrderItemMax
from ORDER_ITEM;
select count(*) as NumberOfRows
from ORDER_ITEM;
select count(DISTINCT Department) as DeptCount
from SKU_DATA;
select
OrderNumber and SKU,
(Quantity * Price) as product
from ORDER_ITEM
order by OrderNumber, SKU;
select
OrderNumber,
 SKU
from ORDER_ITEM
where (Quantity * Price) <> ExtendedPrice;
select
Department,
count(SKU) as NumberOfCatalogItems
from CATALOG_SKU_2017
where CatalogPage is not null
group by Department;
select
Department,
Buyer,
count(SKU) as Dept_Buyer_SKU_Count
from SKU_DATA
group by Department, Buyer;
select
Department and Buyer,
count(SKU) as Dept_Buyer_SKU_Count
from SKU_DATA
group by Department, Buyer;
select
Department,
count(SKU) as Dept_SKU_Count
from SKU_DATA
where SKU <> 302000
group by Department
having count(SKU) >1
order by Dept_SKU_Count ASC;




