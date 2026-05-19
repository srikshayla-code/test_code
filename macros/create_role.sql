{% macro create_role(role_name) %}
    {% set sql %}
        CREATE ROLE IF NOT EXISTS {{ role_name }};
    {% endset %}

    {{ run_query(sql) }}
{% endmacro %}