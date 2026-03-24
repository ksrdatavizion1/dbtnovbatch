{%- set state = ["kar", "hyd", "del", "UP"] -%}  {# list  #}
{%- set Class_info = {"Isactive": True, "Class": "ksr", "Fees": 40000} -%}

Select key, value from (
{% for key, value in Class_info.items() %}
    Select '{{key}}' as key,
            '{{value}}' as value
    {% if not loop.last %}
       UNION ALL 
    {% endif %}    
{% endfor %}) as state1


{# string, boolean, floa, int, list, dict#}