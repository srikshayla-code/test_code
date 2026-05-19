{% macro create_file_format_macro(DATABASE,SCHEMA,FILE_FORMAT_NAME) %}
    {% set praveen  %}
	CREATE OR REPLACE FILE FORMAT {{DATABASE}}.{{SCHEMA}}.{{FILE_FORMAT_NAME}}
	type ='CSV'
	SKIP_HEADER = 1
	FIELD_DELIMITER=','
	TRIM_SPACE =TRUE
	FIELD_OPTIONALLY_ENCLOSED_BY='"';
	{% endset %}
{% do run_query(praveen) %}
{% endmacro %}

