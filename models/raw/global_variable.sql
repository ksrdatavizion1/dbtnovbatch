{%- set  username = "admin" -%}
{%- set  env = "Dev" -%}


Select '{{username}}' as username,
        '{{env}}' as envi,
        '{{ var("name")}}' as name 