-- 1.13 패턴 검색하기
select ename, job
from emp
where deptno in (10, 20);

select ename, job
from emp
where deptno in (10, 20)
  and (ename like '%I%' or job like '%ER');