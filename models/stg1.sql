{{
    config(
        materialized='table',
        schema='silver_schema'
    )
}}
select * from 
{{ source('src_Ecom', 'sales1') }}