{%- set payment_methods = ['bank_transfer', 'coupon', 'gift_card', 'credit_card'] -%}

WITH payments AS 
( 
SELECT * FROM {{ ref('stg_stripe__payments')}}
where status = 'success'
)

, pivoted AS ( 
    SELECT 
        order_id,
        {% for method in payment_methods -%}

            sum(case when payment_method = '{{ method }}' then amount else 0 end) as {{ method }}_amount{%- if not loop.last -%},{% endif -%}

        {% endfor %}
    FROM payments
    group by order_id
)

SELECT * FROM pivoted
