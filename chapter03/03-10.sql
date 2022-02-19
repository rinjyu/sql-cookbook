-- 3.10 집계 시 외부 조인 수행하기
select *
from emp_bonus3;

select a.deptno,
       sum(distinct a.sal) as total_sal,
       sum(a.bonus)        as total_bonus
from (
         select e.empno,
                e.ename,
                e.sal,
                e.deptno,
                e.sal * case
                            when eb3.type is null then 0
                            when eb3.type = 1 then .1
                            when eb3.type = 2 then .2
                            else .3
                    end as bonus
         from emp e
                  left outer join emp_bonus3 eb3
                                  on e.empno = eb3.empno
         where e.deptno = 10
     ) a
group by a.deptno;

select a.deptno,
       a.total_sal,
       sum(e.sal * case
                       when eb3.type = 1 then .1
                       when eb3.type = 2 then .2
                       else .3
           end) as total_bonus
from emp e,
     emp_bonus3 eb3,
     (
         select deptno, sum(sal) as total_sal
         from emp
         where deptno = 10
         group by deptno
     ) a
where e.deptno = a.deptno
  and e.empno = eb3.empno
group by a.deptno, a.total_sal;