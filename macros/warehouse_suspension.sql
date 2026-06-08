{% macro warehouse_suspension(vwh) %}
   {% set srikanth %}
    ALTER WAREHOUSE {{vwh}} suspend
   {%endset%}
   {% do run_query(srikanth) %}
    
{% endmacro %}