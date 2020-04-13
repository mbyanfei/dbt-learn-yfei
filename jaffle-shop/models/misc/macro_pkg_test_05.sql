with my_table as (
    select 'c1' as field_1
    , 'c2' as field_2
    , 'c3' as field_3
    , 'c4' as field_4
    , 'c5' as field_5
    , 10 as units
    , 999999 as vol
)
select
  field_1,
  field_2,
  field_3,
  field_4,
  field_5,
  sum(units) as units,
  sum(vol) as vol
from my_table
{{ group_by(5) }}