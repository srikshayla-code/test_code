select
    EmpID as "Emp ID",
    regexp_replace(EmpName, '([a-z])([A-Z])', '\1 \2') as "Emp Name",
    City
from {{ ref('my_seed_spces') }}