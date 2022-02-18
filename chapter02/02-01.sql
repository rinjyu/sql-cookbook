-- 2.1 지정한 순서대로 쿼리 결과 반환하기
select ename, job, sal
from emp
where deptno = 10
order by sal;

select ename, job, sal
from emp
where deptno = 10
order by sal desc;

select ename, job, sal
from emp
where deptno = 10
order by 3 desc;