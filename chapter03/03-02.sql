-- 3.2 연관된 여러 행 결합하기
select e.ename, d.loc
from emp e,
     dept d
where e.deptno = d.deptno
  and e.deptno = 10;

select e.ename, d.loc, e.deptno as emp_deptno, d.deptno as dept_dept_no
from emp e,
     dept d
where e.deptno = 10;

select e.ename, d.loc, e.deptno as emp_deptno, d.deptno as dept_dept_no
from emp e,
     dept d
where e.deptno = d.deptno
  and e.deptno = 10;

select e.ename, d.loc, e.deptno as emp_deptno, d.deptno as dept_dept_no
from emp e
         inner join dept d on e.deptno = d.deptno
where e.deptno = 10;
