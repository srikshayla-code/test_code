{% snapshot deployment_testing %}

{{
    config(
        unique_key='custid',
        strategy='check',
        check_cols=['phone'],
        invalidate_hard_deletes=true
    )
}}

select *
from {{ source('src_Ecome', 'CUSTOMERS_SAMPLE') }}

{% endsnapshot %}