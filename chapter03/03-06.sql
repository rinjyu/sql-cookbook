-- 3.6 다른 조인을 방해하지 않고 쿼리에 조인 추가하기
select *
from emp_bonus;

select e.ename, d.loc
from emp e,
     dept d
where e.deptno = d.deptno;

select e.ename, d.loc, eb.received
from emp e
         join dept d
              on e.deptno = d.deptno
         left join emp_bonus eb
                   on e.empno = eb.empno
order by 2;

select e.ename,
       d.loc,
       (select eb.received from emp_bonus eb where eb.empno = e.empno) as received
from emp e,
     dept d
where e.deptno = d.deptno
order by 2;