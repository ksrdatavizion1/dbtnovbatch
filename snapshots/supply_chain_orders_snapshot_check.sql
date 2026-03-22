{% snapshot supply_chain_scd2_check %}
    {{
        config(
            target_schema='SILVER_SCHEMA',
            target_database='DBT_LABS',
            unique_key='ORDER_ID',
            strategy='check',
            check_cols=[
                "SUPPLIER_NAME", 
                "PRODUCT_NAME", 
                "QUANTITY", 
                "UNIT_COST", 
                "TOTAL_COST", 
                "STATUS", 
                "DELIVERY_DATE"
            ]
        )
    }}

    select * from {{ source('raw_data', 'scd2') }}
 {% endsnapshot %}