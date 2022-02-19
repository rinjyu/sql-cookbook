-- 3.3 두 테이블의 공통 행 찾기
create view emp_view2
as
select ename, job, sal
from emp
where job = 'CLERK';

select *
from emp_view2;

select e.empno, e.ename, e.job, e.sal, e.deptno
from emp e,
     emp_view2 v
where e.ename = v.ename
  and e.job = v.job
  and e.sal = v.sal;

select e.empno, e.ename, e.job, e.sal, e.deptno
from emp e
         join emp_view2 v
              on (e.ename = v.ename and e.job = v.job and e.sal = v.sal);
