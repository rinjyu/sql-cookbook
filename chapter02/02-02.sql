-- 2.2 다중 필드로 정렬하기
select empno, deptno, sal, ename, job
from emp
order by deptno, sal desc;