with payment AS ( 

    select * from {{ ref('stg_stripe__payments') }}
    where status = 'success'

), 

orders AS ( 

    select * from {{ ref('stg_jaffle_shop__orders') }}

)

select 
    orders.order_id
    , orders.customer_id
    , payment.amount
from payment 
left join orders on payment.order_id = orders.order_id  
