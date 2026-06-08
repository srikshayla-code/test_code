{% macro cloning_table_macro(args) %}
   {% set abc %}
   create  table my_testing_table1 clone my_testing_table
   {% endset %}
   {% do run_query(abc) %}
{% endmacro %}