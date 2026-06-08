{{
    config(
        materialized='incremental',
        on_schema_change='sync_all_columns'
    )
}}
select * from {{ source('src_Ecome', 'raw_employees') }}


{% if is_incremental() %}
    -- this filter will only be applied on an incremental run
    where emp_id > (select max(emp_id) from {{ this }}) 
{% endif %}