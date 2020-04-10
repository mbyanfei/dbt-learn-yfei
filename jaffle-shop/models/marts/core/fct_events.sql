with event_orders as (
    select * from {{ref('stg_events__orders')}}
), 
event_charges as (
    select * from {{ref('stg_events__charges')}}
), 
event_refunds as (
    select * from {{ref('stg_events__refunds')}}
) select * from event_orders

