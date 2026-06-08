{% macro regex_macro(col) %}
   regexp_replace({{col}},'[^0-9]','')
{% endmacro %}