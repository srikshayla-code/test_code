{{ 
    config(
        materialized='table',

        pre_hook=[
            "{{ create_audit_table() }}", 
            "{{ insert_audit_log() }}"     
        ],

        post_hook=[
            "{{ update_audit_log() }}"     
        ]
    ) 
}}

SELECT *
FROM BLACK1.BLACK1.EMP