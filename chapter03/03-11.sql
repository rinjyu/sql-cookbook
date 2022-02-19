-- 3.11 여러 테이블에서 누락된 데이터 반환하기
select d.deptno, d.dname, e.ename
from dept d
         left outer join emp e
                         on d.deptno = e.deptno;

insert into emp(empno, ename, job, mgr, hiredate, sal, comm, deptno)
select 11,
       'YODA',
       'JEDI',
       null,
       hiredate,
       sal,
       comm,
       null
from emp
where ename = 'KING';

select d.deptno, d.dname, e.ename
from dept d
         right outer join emp e
                          on d.deptno = e.deptno
union
select d.deptno, d.dname, e.ename
from dept d
         left outer join emp e
                         on d.deptno = e.deptno;

select d.deptno, d.dname, e.ename
from dept d
         left outer join emp e
                         on d.deptno = e.deptno;

select d.deptno, d.dname, e.ename
from dept d
         right outer join emp e
                          on d.deptno = e.deptno;