
Select * from {{ source('raw_data', 'order') }}

{% if is_incremental() %}
  Where order_date > (select max(order_date) from {{this}} )  
{% endif %}