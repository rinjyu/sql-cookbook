-- 3.9 집계를 사용할 때 조인 수행하기
select *
from emp_bonus2;

select e.empno,
       e.ename,
       e.sal,
       e.deptno,
       e.sal * case
                   when eb2.type = 1 then .1
                   when eb2.type = 2 then .2
                   else .3
           end as bonus
from emp e,
     emp_bonus2 eb2
where e.empno = eb2.empno
  and e.deptno = 10;

select deptno,
       sum(distinct sal) as total_sal,
       sum(bonus)        as total_bonus
from (
         select e.empno,
                e.ename,
                e.sal,
                e.deptno,
                e.sal * case
                            when eb2.type = 1 then .1
                            when eb2.type = 2 then .2
                            else .3
                    end as bonus
         from emp e,
              emp_bonus2 eb2
         where e.empno = eb2.empno
           and e.deptno = 10
     ) a
group by a.deptno;

select sum(sal)
from emp
where deptno = 10;

select a.deptno,
       a.total_sal,
       sum(e.sal * case
                       when eb2.type = 1 then .1
                       when eb2.type = 2 then .2
                       else .3
           end) as total_bonus
from emp e,
     emp_bonus2 eb2,
     (
         select deptno, sum(sal) as total_sal
         from emp
         where deptno = 10
         group by deptno
     ) a
where e.deptno = a.deptno
  and e.empno = eb2.empno
group by a.deptno, a.total_sal;