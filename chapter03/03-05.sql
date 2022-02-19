-- 3.5 다른 테이블 행과 일치하지 않는 행 검색하기
select d.*
from dept d
         left outer join emp e
                         on d.deptno = e.deptno
where e.deptno is null;

select e.ename, e.deptno as emp_deptno, d.*
from dept d left outer join emp e
on (d.deptno = e.deptno);