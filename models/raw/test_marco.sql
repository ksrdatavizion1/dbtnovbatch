SELECT
    customer_id,
    full_name,
    {{ standardize_state('state') }} AS standardized_state,
    city,
    {{ mask_mobile('mobile_number') }} AS masked_mobile,
    email,
    {{ is_valid_email('email') }} AS is_email_valid,  -- Returns true if email format is valid
    gender,
    age,
    {{age_category('age')}} AS age_category,
    registered_on
FROM {{ source('raw_data', 'Tel_cust') }}