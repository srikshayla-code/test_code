{{
    config(
        materialized='table',
        transient=false,
        alias="sales_dashboard",
        query_tag=['my_test'])
}}
select * from 
{{ source('src_Ecom', 'sales1') }}