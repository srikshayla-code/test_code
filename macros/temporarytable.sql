{% macro create_temp_table(
    temp_table_name,
    target_database,
    target_schema,
    source_database,
    source_schema,
    source_table
) %}
    CREATE TEMPORARY TABLE {{ target_database }}.{{ target_schema }}.{{ temp_table_name }} AS
    SELECT *
    FROM {{ source_database }}.{{ source_schema }}.{{ source_table }};
{% endmacro %}