-- 3.4 한 테이블에서 다른 테이블에 존재하지 않는 값 검색하기
select distinct deptno
from dept
where deptno not in (select deptno from emp);

create table new_dept
(
    deptno integer
);
insert into new_dept
values (10);
insert into new_dept
values (50);
insert into new_dept
values (null);

select d.deptno
from dept d
where not exists(select 1 from emp e where d.deptno = e.deptno);

select d.deptno
from dept d
where not exists(select 1 from new_dept nd where nd.deptno = d.deptno);