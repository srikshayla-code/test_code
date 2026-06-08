{{
    config(
        materialized='table',
        transient=false
    )
}}

select firstname,MIddlename,Lastname,{{concat_macro('firstname','middlename','lastname')}} as full_name from {{ source('src_Ecome', 'Customers_sample_test') }}