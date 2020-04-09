select t1.order_id, t1.customer_id, t2.amount
from {{ref('stg_orders')}} t1 left join {{ref('stg_payment')}} t2
on t1.order_id = t2.order_id