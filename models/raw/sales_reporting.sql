SELECT
    order_id,
    customer_id,
    order_date,
    total_amount
FROM {{ source('raw_data', 'SALES_ORDERS') }}
WHERE EXTRACT(YEAR FROM order_date) = {{ var('reporting_year') }}
  AND EXTRACT(MONTH FROM order_date) in (
    {% set months = var('reporting_month') if var('reporting_month') is iterable else [var('reporting_month')] %} {{months | join(',')}}
    )