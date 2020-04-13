{% macro epoch_to_timestamp(column_name, time_unit='milliseconds') %}
    {{ dbt_utils.dateadd(datepart=time_unit, interval=column_name, from_date_or_timestamp="'1970-01-01'") }}
{% endmacro %}