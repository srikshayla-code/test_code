{{
    config(
        store_failures=true
    )
}}
select * from {{ ref('saless1_stg') }}
where shipped_date < order_date