-- 3.7 두 테이블에 같은 데이터가 있는지 확인하기
create view emp_view3
as
select *
from emp
where deptno != 10
union all
select *
from emp
where ename = 'WARD';

select *
from emp_view3;

select *
from (
         select empno,
                ename,
                job,
                mgr,
                hiredate,
                sal,
                comm,
                deptno,
                count(*) as cnt
         from emp
         group by empno, ename, job, mgr, hiredate,
                  sal, comm, deptno
     ) e
where not exists(
        select null
        from (
                 select empno,
                        ename,
                        job,
                        mgr,
                        hiredate,
                        sal,
                        comm,
                        deptno,
                        count(*) as cnt
                 from emp_view3
                 group by empno, ename, job, mgr, hiredate,
                          sal, comm, deptno
             ) a
        where a.empno = e.empno
          and a.ename = e.ename
          and a.job = e.job
          and coalesce(a.mgr, 0) = coalesce(e.mgr, 0)
          and a.hiredate = e.hiredate
          and a.sal = e.sal
          and a.deptno = e.deptno
          and a.cnt = e.cnt
          and coalesce(a.comm, 0) = coalesce(e.comm, 0)
    )
union all
select *
from (
         select empno,
                ename,
                job,
                mgr,
                hiredate,
                sal,
                comm,
                deptno,
                count(*) as cnt
         from emp_view3
         group by empno, ename, job, mgr, hiredate,
                  sal, comm, deptno
     ) e
where not exists(
        select null
        from (
                 select empno,
                        ename,
                        job,
                        mgr,
                        hiredate,
                        sal,
                        comm,
                        deptno,
                        count(*) as cnt
                 from emp
                 group by empno, ename, job, mgr, hiredate,
                          sal, comm, deptno
             ) a
        where e.empno = a.empno
          and e.ename = a.ename
          and e.job = a.job
          and coalesce(e.mgr, 0) = coalesce(a.mgr, 0)
          and e.hiredate = a.hiredate
          and e.sal = a.sal
          and e.deptno = a.deptno
          and e.cnt = a.cnt
          and coalesce(e.comm, 0) = coalesce(a.comm, 0)
    );

select count(*)
from emp
union
select count(*)
from dept;

select *
from (
         select e.empno,
                e.ename,
                e.job,
                e.mgr,
                e.hiredate,
                e.sal,
                e.comm,
                e.deptno,
                count(*) as cnt
         from emp e
         group by empno, ename, job, mgr, hiredate,
                  sal, comm, deptno
     ) e
where not exists(
        select null
        from (
                 select empno,
                        ename,
                        job,
                        mgr,
                        hiredate,
                        sal,
                        comm,
                        deptno,
                        count(*) as cnt
                 from emp_view3
                 group by empno, ename, job, mgr, hiredate,
                          sal, comm, deptno
             ) a
        where a.empno = e.empno
          and a.ename = e.ename
          and a.job = e.job
          and a.mgr = e.mgr
          and a.hiredate = e.hiredate
          and a.sal = e.sal
          and a.deptno = e.deptno
          and a.cnt = e.cnt
          and coalesce(a.comm, 0) = coalesce(e.comm, 0)
    );

select *
from (
         select empno,
                ename,
                job,
                mgr,
                hiredate,
                sal,
                comm,
                deptno,
                count(*) as cnt
         from emp_view3
         group by empno, ename, job, mgr, hiredate,
                  sal, comm, deptno
     ) a
where not exists(
        select null
        from (
                 select e.empno,
                        e.ename,
                        e.job,
                        e.mgr,
                        e.hiredate,
                        e.sal,
                        e.comm,
                        e.deptno,
                        count(*) as cnt
                 from emp e
                 group by empno, ename, job, mgr, hiredate,
                          sal, comm, deptno
             ) e
        where a.empno = e.empno
          and a.ename = e.ename
          and a.job = e.job
          and a.mgr = e.mgr
          and a.hiredate = e.hiredate
          and a.sal = e.sal
          and a.deptno = e.deptno
          and a.cnt = e.cnt
          and coalesce(a.comm, 0) = coalesce(e.comm, 0)
    );