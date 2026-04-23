select
    id as payment_id,
    orderid as order_id,
    amount, 
    status,
    created as payment_date
from test.dbt_raj_test.payment