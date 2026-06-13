{% macro clone_tables(source_db, source_schema, target_db, target_schema, table_list) %}

    {% for table_name in table_list %}

        {% set clone_sql %}
            create or replace table
            {{ target_db }}.{{ target_schema }}.{{ table_name }}
            clone
            {{ source_db }}.{{ source_schema }}.{{ table_name }}
        {% endset %}

        {{ log("Cloning table: " ~ table_name, info=True) }}

        {% do run_query(clone_sql) %}

    {% endfor %}

{% endmacro %}
