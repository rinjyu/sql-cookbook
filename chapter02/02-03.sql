-- 2.3 부분 문자열로 정렬하기
select ename, job
from emp
order by substr(job, length(job) - 1);