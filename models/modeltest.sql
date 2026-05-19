{{
    config(
        materialized='table'
    )
}}
select * from 
{{ source('src_Ecom', 'sales1') }}