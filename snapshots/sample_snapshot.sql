{% snapshot sample_snapshot %}
    {{
        config(
            unique_key='custid',
            strategy='check',
            check_cols=['country'],
            invalidate_hard_deletes=true,
        snapshot_meta_column_names={
            "dbt_valid_from": "valid_from",
            "dbt_valid_to": "valid_to",
            "dbt_scd_id": "scd_id",
            "dbt_updated_at": "last_updated_at",
            "dbt_is_deleted": "is_deleted"
        }
        )
    }}

    select * from {{ source('src_Ecome', 'CUSTOMERS_SAMPLE') }}

 {% endsnapshot %}