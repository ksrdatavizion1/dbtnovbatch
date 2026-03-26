{% test validate_email_format(model, column_name)%}
Select * from {{model}} where {{column_name}}
not like '%@%.%'

-- negative sceniro
{% endtest%}





-- 