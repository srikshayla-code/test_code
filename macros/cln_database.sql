{% macro cloning_database_macro(args) %}
  {% set abc %}
create or replace database database_test_clone;
  {% endset %}
  {% do run_query(abc) %}
{% endmacro %}


select {{cloning_database_macro('MY_DB')}}