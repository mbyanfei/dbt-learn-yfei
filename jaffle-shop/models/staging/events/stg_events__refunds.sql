with source_refunds as (
    select * from {{ source('learn_stripe', 'refunds') }}
),
renamed_refunds as (
    select
        *
    from source_refunds
)
select * from renamed_refunds