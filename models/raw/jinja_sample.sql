{# this is my comment I am using by Jinja#}

{% set env = "Prod"%}

Select -- below is the sql comment
{% if env == "Prod"%}
    'Prod' as Envi,
    'Prod_VW' as compute
{% elif env == "QA"%}
    'QA' as Envi,
    'QA_VW' as compute   
{% elif env == "Dev"%}
    'Dev' as Envi,
    'Dev_VW' as compute  
{% else%} 
    "Other" as Envi,
    "Other_VW" as compute  
{% endif %}