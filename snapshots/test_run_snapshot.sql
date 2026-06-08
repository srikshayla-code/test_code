{% snapshot test_run_snapshot %}

{{
    config(
        unique_key='custid',
        strategy='timestamp',
        updated_at='last_updated',
        hard_deletes='invalidate'
       
    )
}}

select *
from {{ source('src_Ecome', 'CUSTOMERS_SAMPLE1') }}

{% endsnapshot %}