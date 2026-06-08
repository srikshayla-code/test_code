{{
    config(
        materialized='table',
        transient=false
    )
}}
select emp_id,{{regex_macro('emp_id')}} as formatted_emp_d from {{ source('src_Ecome', 'srikanth_regex') }}