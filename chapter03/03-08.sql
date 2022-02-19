-- 3.8 데카르트 곱 식별 및 방지하기
select e.ename, d.loc
from emp e,
     dept d
where e.deptno = 10;

select e.ename, d.loc
from emp e,
     dept d
where e.deptno = 10
  and d.deptno = e.deptno;

select *
from dept;