{% macro triveni_highest(num1, num2) %}
  {% if num1 > num2 %}
    {{ num1 }}
  {% else %}
    {{ num2 }}
  {% endif %}
{% endmacro %}

select {{ triveni_highest(10, 13) }}