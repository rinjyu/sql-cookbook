-- 2.4 혼합 영숫자 데이터 정렬하기
create view emp_view
as
select concat(ename, ' ', deptno) as data
from emp;

select *
from emp_view;

select data
from emp_view
order by regexp_replace(data, '[^[:digit:]]', '');

select data
from emp_view
order by regexp_replace(data, '[0-9]', '');