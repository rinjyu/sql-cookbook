-- 1.3 여러 조건을 충족하는 행 찾기
select *
from emp
where deptno = 10
   or comm is not null
   or (sal <= 2000 and deptno = 20);

select *
from emp
where (deptno = 10
    or comm is not null
    or sal <= 2000)
  and deptno = 20;

