{%- set payment_methods_sql %} 
    select distinct payment_method 
    from {{ref('stg_stripe__payments')}}
{%- endset -%}

{%- if execute %}
  {%- set payment_methods = run_query(payment_methods_sql) %}
  {# Return the first column #}
  {%- set payment_methods_list = payment_methods.columns[0].values() %}
  {%- else %}
  {% set payment_methods_list = [] %}
{%- endif -%}

select order_id,
{%- for payment_method in payment_methods_list %}
  sum(case when payment_method = '{{payment_method}}' then amount end) as {{payment_method}}_amount 
{%- if not loop.last %},{%- endif -%}
{%- endfor -%}
  -- sum(amount) as total_amount
  from {{ref('stg_stripe__payments')}}
  group by 1