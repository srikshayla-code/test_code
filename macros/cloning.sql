-- macros/clone_view.sql
{% macro clone_view(source_database,source_view,source_schema,source_table,target_database,target_schema,target_table,target_view) %}
    CREATE VIEW {{ target_database }} CLONE {{ source_database }};
    CREATE VIEW {{ target_schema }} CLONE {{ source_schema }};
    CREATE VIEW {{ target_view }} CLONE {{ source_view }};
    CREATE VIEW {{ target_table }} CLONE {{ source_table }};
{% endmacro %}