with source_refunds as (
    select * from {{ source('learn_stripe', 'refunds') }}
),
renamed_refunds as (
    select id as refund_id
        , charge_id
        , status
        , currency
        , created as created_at
    from source_refunds
)
select * from renamed_refunds