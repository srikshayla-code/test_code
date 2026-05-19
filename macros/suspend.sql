
{% macro suspend_macro(WAREHOUSE) %}
    {% set state %}
ALTER WAREHOUSE {{ WAREHOUSE }} RESUME
    {% endset %}
    {% do run_query(state) %}
{% endmacro %}