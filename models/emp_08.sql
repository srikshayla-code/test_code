select current_database(),current_schema()

select * from SAMPLE1.DBT_SRIKSHAYLACODE.ORDERS


select '{{target.database}}','{{target.schema}}','{{target.type}}'

select
    '{{ invocation_id }}' as invocation_id