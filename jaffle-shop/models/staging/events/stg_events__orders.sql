with source_orders as (
    select * from {{ source('ticket_tailor', 'orders') }}
),
renamed_orders as (
    select order_id
    , order_cancelled
    , event_id
    , order_items
    , tax_amount
    , tickets_checked_in
    , tickets_purchased
    , total_paid
    , transaction_id as charge_id
    , transaction_type
    , order_date
    from source_orders
)
select * from renamed_orders