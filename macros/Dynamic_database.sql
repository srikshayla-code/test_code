{% macro Dynamic_database(source_database,target_database) %}
  {% set abc %}
create {{target_database}}  database_test_clone clone {{source_database}};
  {% endset %}
  {% do run_query(abc) %}
{% endmacro %}