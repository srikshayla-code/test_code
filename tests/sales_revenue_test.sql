{{
    config(
        store_failures=true
    )
}}
select 
* from {{ ref('saless1_stg') }}
where revenue < 0