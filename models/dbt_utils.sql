select *,
        {{dbt_utils.generate_surrogate_key(['course','trainer'])}} key
from {{ source('src_Ecom','course_it') }}