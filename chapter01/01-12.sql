-- 1.12 null 을 실젯값으로 변환하기
select coalesce(comm, 0)
from emp;

select case
           when comm is null then 0
           else comm end as comm
from emp;

select IF(comm is null, 0, comm) as comm
from emp;