{% snapshot supply_chain_scd2_table2 %}
    {{
        config(
            target_schema='SILVER_SCHEMA',
            target_database='DBT_LABS',
            unique_key='ORDER_ID',
            strategy='timestamp',
            updated_at='UPDATED_AT',
            hard_deletes = 'new_record')
    }}

    select * from {{ source('raw_data', 'scd2') }}
 {% endsnapshot %}