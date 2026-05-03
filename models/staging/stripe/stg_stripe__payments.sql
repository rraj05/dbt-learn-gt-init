select
    id as payment_id,
    orderid as order_id, 
    status,
    -- amount is stored in cents, convert it to dollar
    amount / 100 as amount,
    created as payment_date
from {{ source('stripe', 'payment') }}