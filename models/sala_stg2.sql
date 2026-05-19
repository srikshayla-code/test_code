{{
    config(
        materialized='table',
        schema='s'
    )
}}
select * from 
{{ source('src_Ecom', 'sales1') }}