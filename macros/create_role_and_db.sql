{% macro create_role_and_db() %}

{% set sql_statements = [
    "CREATE ROLE IF NOT EXISTS Data_guy",
    "CREATE DATABASE IF NOT EXISTS Data_db",
    "GRANT USAGE ON DATABASE Data_db TO ROLE Data_guy"
] %}

{% for sql in sql_statements %}
    {{ run_query(sql) }}
{% endfor %}

{% endmacro %}