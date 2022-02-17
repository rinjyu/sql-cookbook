-- 1.6 WHERE 절에서 별칭이 지정된 열 참조하기
select salary,
       commition
from (
         select sal as salary, comm as commition
         from emp
     ) a
where salary < 5000;