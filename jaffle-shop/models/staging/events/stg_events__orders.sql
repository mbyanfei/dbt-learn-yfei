with source_orders as (
    select * from {{ source('ticket_tailor', 'orders') }}
),
renamed_orders as (
    select
        *
    from source_orders
)
select * from renamed_orders