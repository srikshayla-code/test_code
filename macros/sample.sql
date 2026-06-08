{% macro subbu_macro(num1,num2,num3) %}
   {{num1}}+{{num2}}+{{num3}}    
{% endmacro %}

select {{subbu_macro(4,5,8)}}