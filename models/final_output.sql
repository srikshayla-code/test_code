{{
    config(
        materialized='table'
    )
}}

select
    
    EmpID as "EMP ID",

    regexp_replace(
        EmpName,
        '([a-z])([A-Z])',
        '\\1 \\2'
    ) as "EMP NAME",

    City as "CITY"

from {{ ref('my_seed_spces') }}