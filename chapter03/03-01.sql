-- 3.1 행 집합을 다른 행 위에 추가하기
select ename as ename_and_dname, deptno
from emp
union all
select '--------------', null
union all
select dname, deptno
from dept;

select deptno
from emp
union
select deptno
from dept;

select distinct a.deptno
from (
         select deptno
         from emp
         union all
         select deptno
         from dept
     ) a;