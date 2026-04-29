select
    id as payment_id,
    orderid as order_id,
    amount, 
    status,
    created as payment_date
from {{ source('stripe', 'payment') }}