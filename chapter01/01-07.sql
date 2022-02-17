-- 1.7 열 값 이어 붙이기
select concat(ename, ' WORKS AS A', job) as msg
from emp
where deptno = 10;