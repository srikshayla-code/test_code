{{
    config(
        materialized='incremental',
        unique_key='custid',
        query_tag='delete+insert',
        incremental_strategy='insert_overwrite'
    )
}}
select * from {{ source('src_Ecome', 'CUSTOMERS_SAMPLE1') }}