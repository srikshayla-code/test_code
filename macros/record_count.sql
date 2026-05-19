
{% macro record_count(tablename) %}
    (select count(*) from {{ tablename }})
{% endmacro %}

select {{ record_count('SAMPLE1.DBT_SRIKSHAYLACODE.EMP') }} as total_rows;