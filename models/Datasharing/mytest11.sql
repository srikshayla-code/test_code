{{
    config(
        materialized='table',
        database='my_db',
        schema='my_schema',
        alias="sales_dashboard",
        query_tag=['my_test'])
}}
select * from 
{{ source('src_Ecom', 'sales1') }}