{% macro is_valid_email(email_column) %}
    REGEXP_LIKE({{ email_column }}, '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$')
{% endmacro %}

{% macro age_category(age_column) %}
    CASE
        WHEN {{ age_column }} < 30 THEN 'Young'
        WHEN {{ age_column }} BETWEEN 30 AND 45 THEN 'Mid'
        ELSE 'Senior'
    END
{% endmacro %}


{% macro get_fiscal_quarter(date_column) %}
    CASE
        WHEN MONTH({{ date_column }}) BETWEEN 4 AND 6 THEN 'Q1'
        WHEN MONTH({{ date_column }}) BETWEEN 7 AND 9 THEN 'Q2'
        WHEN MONTH({{ date_column }}) BETWEEN 10 AND 12 THEN 'Q3'
        ELSE 'Q4'
    END
{% endmacro %}

