{{
     config(
        materialized='table',
        query_tag='dbt_tag',
        pre_hook=["{{set_warehouse(var('vwh'))}}"],
        post_hook=["Alter warehouse DX_WAREHOUSE_X SUSPEND","{{set_warehouse(var('default_wh'))}}"]
     )
}}

select *, current_timestamp() ingest_time,current_user() usr

from {{ source('src_Ecom', 'sales1') }}