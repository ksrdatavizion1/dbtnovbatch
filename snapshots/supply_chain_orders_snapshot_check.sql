{% snapshot supply_chain_orders_snapshot %}
    {{
        config(
            target_database="DBT_LABS",
            target_schema="SILVER_SCH",
            unique_key="ORDER_ID",
            strategy="timestamp",
            updated_at="UPDATED_AT",
            query_tag = 'dbt',
            pre_hook = "{{log_snapshot_start('supply_chain_orders_snapshot')}}",
            post_hook = "{{log_snapshot_end('supply_chain_orders_snapshot',this)}}"
        )
    }}

    select * from {{ source('raw_data', 'scd2') }}
 {% endsnapshot %}