-- 1.8 SELECT 문에서 조건식 사용하기
select ename,
       sal,
       case
           when sal <= 2000 then 'UNDERPAID'
           when sal >= 4000 then 'OVERPAID'
           else 'OK'
           end as status
from emp;