
select * from {{ source('src_Ecom', 'sales1') }}

{{target.type}}