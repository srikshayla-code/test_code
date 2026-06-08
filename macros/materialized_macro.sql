{% macro materialized_macro(args) %}
   {% set srikanth %}
create or replace materialized view srikanth_view
as
select * from SAMPLE1.MY_DEV_SCHEMA.REGEX_EXP;
   {%endset%}
   {% do run_query(srikanth) %}
{% endmacro %}