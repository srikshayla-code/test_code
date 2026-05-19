{% test validate_mail(model, column_name) %}

select * from {{model}}
where {{column_name}} not like '%@%'
{% endtest %}