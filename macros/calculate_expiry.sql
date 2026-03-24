{% macro Cal_exp (Act_date, Vali_date) %}
    dateadd(day, {{Vali_date}}, {{Act_date}})
{% endmacro %}