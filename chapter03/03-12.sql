-- 3.12 연산 및 비교에서 null 사용하기
select ename, comm
from emp
where coalesce(comm, 0) < (select comm from emp where ename = 'WARD');

select ename, comm, coalesce(comm, 0)
from emp
where coalesce(comm, 0) < (select comm from emp where ename = 'WARD');