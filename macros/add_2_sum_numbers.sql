{% macro add_sum(num1,num2) %}
  {{num1}}+{{num2}}

{% endmacro %}

select {{dd_sum(2,3)}}