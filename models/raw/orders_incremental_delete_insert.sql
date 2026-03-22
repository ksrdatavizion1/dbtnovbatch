{{
    config(
        materialized='incremental',
        incremental_strategy = 'delete+insert',
        unique_key =  'order_id'
    )
}}

SELECT
  *
 from {{ source('raw_data', 'order') }}

 {% if is_incremental() %}
   Where order_date >= dateadd(day, -10 , current_date) 
 {% endif %}