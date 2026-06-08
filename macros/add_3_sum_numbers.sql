{% macro add_3_sum(num1,num2,num3) %}
{{num1}}+{{num2}}+{{num3}}
{% endmacro %}

select {{add_3_sum(2,3,4)}}