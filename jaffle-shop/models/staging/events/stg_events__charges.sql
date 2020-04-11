with source_charges as (
    select * from {{ source('learn_stripe', 'charges') }}
),
renamed_charges as (
    select id as charge_id
    , description
    , captured
    , object
    , paid
    , refunded
    , status
    , livemode as live_mode
    , failure_code
    , failure_message
    , currency
    , created as created_at
    from source_charges
)
select * from renamed_charges