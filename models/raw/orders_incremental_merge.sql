{{
    config(
        materialized='incremental',
        incremental_strategy = 'merge',
        unique_key = ['customer_id', 'order_id'],
        incremental_predicates = ['DBT_INTERNAL_DEST.order_date >= dateadd(day, -7, current_date)'],
        on_schema_change = 'sync_all_columns'
    )
}}

SELECT
*
FROM {{ source('raw_data', 'order') }}

{% if is_incremental() %}
  WHERE order_date >= dateadd(day, -10, current_date)
{% endif %}