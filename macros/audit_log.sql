{% macro create_audit_table() %}

-- Creates the audit log table if it does not exist
CREATE TABLE IF NOT EXISTS praveeen_dbt_audit_log (
    AUDIT_ID NUMBER AUTOINCREMENT,
    INVOCATION_ID STRING,
    MODEL_NAME STRING,
    START_TIME TIMESTAMP,
    END_TIME TIMESTAMP,
    TIME_TAKEN_IN_SECONDS NUMBER(10,2),
    STATUS STRING,
    CREATED_AT TIMESTAMP DEFAULT CURRENT_TIMESTAMP()
);

{% endmacro %}

{% macro insert_audit_log() %}

INSERT INTO praveeen_dbt_audit_log (
    INVOCATION_ID,
    MODEL_NAME,
    START_TIME,
    STATUS
)
VALUES (
    '{{ invocation_id }}',
    '{{ this.name }}',
    CURRENT_TIMESTAMP(),
    'STARTED'
);

{% endmacro %}

{% macro update_audit_log() %}

UPDATE praveeen_dbt_audit_log
SET
    END_TIME = CURRENT_TIMESTAMP(),
    TIME_TAKEN_IN_SECONDS = DATEDIFF(
        SECOND,
        START_TIME,
        CURRENT_TIMESTAMP()
    ),
    STATUS = 'COMPLETED'
WHERE INVOCATION_ID = '{{ invocation_id }}'
AND MODEL_NAME = '{{ this.name }}'
AND STATUS = 'started';

{% endmacro %}


