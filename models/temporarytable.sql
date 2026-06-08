{{ create_temp_table(
    'temp_sales_staging',
    'SAMPLE1',
    'MY_DEV_SCHEMA',
    'SAMPLE1',
    'MY_DEV_SCHEMA',
    'sales1'
) }}

select *
from temp_sales_staging