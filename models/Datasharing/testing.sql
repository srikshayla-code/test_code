{{
    config(
        materialized='table',
        transient=false
    )
}}
select * from {{ source('src_Ecom', 'sales1') }}