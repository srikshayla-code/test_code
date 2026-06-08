{% snapshot my_snapshot2 %}

{{
    config(
        target_schema='SC_SNPS',
        target_database='DB_SNPS',
        unique_key='custid',
        strategy='check',
        check_cols=['phone'],
        invalidate_hard_deletes=False
    )
}}

select *
from {{ source('src_Ecome', 'CUSTOMERS_SAMPLE') }}

{% endsnapshot %}
