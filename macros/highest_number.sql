{% macro highest_number(num1,num2) %}
    {% if num1>num2 %}
    {{num1}} 
    {% else %}
    {{num2}} 
    {% endif %}
{% endmacro %}

select {{highest_number(3,6)}}