{% macro store_procedure(arg1) %}
   {% set srikanth %}
    call MY_TEST_PROCEDURE({{arg1}});
   {%endset%}
   {% do run_query(srikanth) %}
{% endmacro %}