{{ config(materialized='ephemeral') }}

SELECT
    PRODUCT_ID,
    CUSTOMER_ID,
    QUANTITY,
    SALE_DATE
FROM {{ source('raw_data', 'trans') }}
WHERE SALE_DATE IS NOT NULL