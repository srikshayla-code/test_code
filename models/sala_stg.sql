
{{
    config(
        materialized='table',
        schema='supreme'
    )
}}
select * from 
{{ source('src_Ecom', 'sales1') }}