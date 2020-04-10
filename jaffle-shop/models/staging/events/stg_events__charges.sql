with source_charges as (
    select * from {{ source('learn_stripe', 'charges') }}
),
renamed_charges as (
    select
        *
    from source_charges
)
select * from renamed_charges