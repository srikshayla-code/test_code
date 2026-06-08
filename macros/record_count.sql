
{% macro record_count(tablename) %}
    (select count(*) from {{ tablename }})
{% endmacro %}

select {{ record_count('SAMPLE1.MY_DEV_SCHEMA.TIMESTAMP_SNAPSHOT') }} as total_rows