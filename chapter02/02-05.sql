-- 2.5 정렬할 때 null 처리하기

select ename, sal, comm
from (
         select ename, sal, comm, if(comm is null, 0, 1) is_null
         from emp
     ) a
order by a.is_null desc, comm;

select ename, sal, comm
from (
         select ename, sal, comm, if(comm is null, 0, 1) is_null
         from emp
     ) a
order by a.is_null desc, comm desc;

select ename, sal, comm
from (
         select ename, sal, comm, if(comm is null, 0, 1) is_null
         from emp
     ) a
order by a.is_null, comm;

select ename, sal, comm
from (
         select ename, sal, comm, if(comm is null, 0, 1) is_null
         from emp
     ) a
order by a.is_null, comm desc;