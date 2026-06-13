{% macro grant_create_role(role_name) %}
    {% set sql %}
        GRANT USAGE ON DATABASE SAMPLE1 TO ROLE  {{ role_name }};
    {% endset %}

    {{ run_query(sql) }}
{% endmacro %}