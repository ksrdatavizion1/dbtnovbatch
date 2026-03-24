{#declare local variable#}  
{%- set  username = "admin" -%}
{%- set  env = "Dev" -%}
{%- set  retry = 2 -%}
{%- set  price = 200.25 -%}


Select '{{username}}' as username,
        '{{env}}' as envi,
        {{retry}} as retry,
        {{price}} as price