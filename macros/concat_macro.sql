{% macro concat_macro(col1,col2,col3) %}
   INITCAP({{col1}}||' '||{{col2}}||' '||{{col3}})
    
{% endmacro %}

select current_database(),current_schema()