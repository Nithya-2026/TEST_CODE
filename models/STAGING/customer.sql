{{config(materialized='table')}}
WITH tb1 as(
select
id ,
first_name,
last_name
from{{source('Source_table_name','RAW_CUSTOMER_DATA')}})
select * from tb1