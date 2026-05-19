{{
    config(
        materialized='table',
        schema='mills')
    
}}

select * from {{ source('src_Ecom', 'sales1') }}