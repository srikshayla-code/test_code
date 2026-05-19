{% macro concat_macro(col1,col2,col3) %}
   {{col1}}||' '{{col2}}||' '{{col3}}
    
{% endmacro %}