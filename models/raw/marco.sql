{% set cust_table = 'telecom_customers'%}
{% set plan_table = 'telecom_plans'%}

{{filter_telecom_data(cust_table,plan_table)}}