{% snapshot supply_chain_scd2_table %}
    {{
        config(
            target_schema='SILVER_SCHEMA',
            target_database='DBT_LABS',
            unique_key='ORDER_ID',
            strategy='timestamp',
            updated_at='UPDATED_AT'
        )
    }}

    select * from {{ source('raw_data', 'scd2') }}
 {% endsnapshot %}