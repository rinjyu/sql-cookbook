-- 2.6 데이터 종속 키 기준으로 정렬하기
select ename, sal, job, comm
from emp
order by if(job = 'SALESMAN', comm, sal);

select ename, sal, job, comm, IF(job = 'SALESMAN', comm, sal) as ordered
from emp
order by 5;