with fake_data as (
    select 1586736680000 as time_in_epoch
)
select {{- epoch_to_timestamp(
    column_name='time_in_epoch',
    time_unit='milliseconds'
) 
-}} as epoch_2_ts
from fake_data