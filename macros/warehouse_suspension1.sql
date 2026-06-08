{% macro srikanth_warehouse(num1) %}
    {% set subbu %}
    ALTER WAREHOUSE {{num1}} resume
    {%endset%}
    {% do run_query(subbu) %}
{% endmacro %}

