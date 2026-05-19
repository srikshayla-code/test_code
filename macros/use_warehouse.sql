{% macro use_warehouse()%}
   {% set pra%}
   CREATE WAREHOUSE MY_WAREHOUSE1 
   {% endset %}
   {% do run_query(pra) %}
{% endmacro %}