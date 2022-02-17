-- 1.10 테이블에서 N개의 무작위 레코드 반환하기
select ename, job
from emp
where rand() limit 5;