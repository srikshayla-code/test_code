{% macro add_sum(num1,num2) %}
  {{num1}}+{{num2}}

{% endmacro %}

select {{add_sum(2,3)}}