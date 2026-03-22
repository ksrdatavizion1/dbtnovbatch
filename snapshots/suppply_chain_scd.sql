{% snapshot supply_chain_orders_snapshot22 %}
    {{
        config(
            target_schema='SILVER_SCHEMA',
            target_database='DBT_LABS',
            unique_key='ORDER_ID',
            strategy='check',
            check_cols= 'all',
            snapshot_meta_column_names = {
                "dbt_valid_from": "valid_form",
                "dbt_valid_to": "valid_to",
                "dbt_scd_id": "surrogate_key"
            }
        )
    }}

    select * from {{ source('raw_data', 'scd2') }}
 {% endsnapshot %}