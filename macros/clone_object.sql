{% macro clone_object(object_type, source_database, source_schema=None, object_name=None,
                      target_database=None, target_schema=None, target_name=None) %}

    {% set t = object_type | lower %}

    {% if t == 'database' %}
        CREATE DATABASE {{ target_database }} CLONE {{ source_database }};
    
    {% elif t == 'schema' %}
        CREATE SCHEMA {{ target_database }}.{{ target_schema }} CLONE {{ source_database }}.{{ source_schema }};
    
    {% elif t == 'table' %}
        CREATE TABLE {{ target_database }}.{{ target_schema }}.{{ target_name }}
        CLONE {{ source_database }}.{{ source_schema }}.{{ object_name }};
    
    {% elif t == 'view' %}
        CREATE VIEW {{ target_database }}.{{ target_schema }}.{{ target_name }}
        CLONE {{ source_database }}.{{ source_schema }}.{{ object_name }};
    
    {% else %}
        {{ exceptions.raise_compiler_error("Invalid object_type: " ~ object_type) }}
    {% endif %}

{% endmacro %}