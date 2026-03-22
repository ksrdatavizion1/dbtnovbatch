{{
    config(
        materialized='view',
        schema = 'New_schema',
        database = "DBT_LABS_2"
    )
}}
SELECT
    CUSTOMER_ID as CUST_ID, FIRST_NAME, LAST_NAME, FIRST_NAME || ' ' || LAST_NAME as FULL_NAME,
    EMAIL, PHONE AS PHN_NUMBER, CITY, STATE from {{ source('raw_data', 'CUST') }}