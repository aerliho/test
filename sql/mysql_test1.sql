1.���⽨��

--create database company

create database company;

use company;

--create tables

--���ű�
create table dept
(
    deptno int(3) primary key,
    dname varchar(14),
    loc varchar(13)
);

--��Ա��
create table emp
(
    empno int(4) not null primary key,
    ename varchar(10),
    job varchar(10),
    mgr int(4),
    hiredate datetime,
    sal double,
    comm double,
    deptno int(3),
    foreign key(deptno) references dept(deptno)
);

--���ʼ����
create table salgrade
(
    grade int(3) primary key,
    losal int(3),
    hisal int(3)
); 

----------------------------------------------------------------------------------------------------------------------------------------

2.�������ݣ����г�ʼ����

use company;

--�����ű��в�����
insert into dept values(10,'Accounting','New York');
insert into dept values(20,'Research','Dallas');
insert into dept values(30,'Sales','Chicago');
insert into dept values(40,'Operations','Boston');
insert into dept values(50,'Admin','Washing');

--����Ա���в�����
insert into emp values(7369,'Smith','Clerk',7902,'1980-12-17',800,0,20);
insert into emp values(7499,'Allen','Salesman',7698,'1981-2-20',1600,300,30);
insert into emp values(7844,'Turner','Salesman',7499,'1981-9-8',1500,0,30);
insert into emp values(7698,'Tom','Manager',0,'1981-9-8',6100,600,40);
insert into emp values(7876,'Adams','Clerk',7900,'1987-5-23',1100,0,20);
insert into emp values(7900,'James','Clerk',7698,'1981-12-3',2400,0,30);
insert into emp values(7902,'Ford','Analyst',7698,'1981-12-3',3000,null,20);
insert into emp values(7901,'Kik','Clerk',7900,'1981-12-3',1900,0,30);

--�����ʼ�����в�����
insert into salgrade values(1,700,1200);
insert into salgrade values(2,1201,1400);
insert into salgrade values(3,1401,2000);
insert into salgrade values(4,2001,3000);
insert into salgrade values(5,3001,5000);
insert into salgrade values(6,5001,10000);

------------------------------------------------------------------------------------------------------------------------------------

3.�ػ��5���麯����max,min,avg,sum,count Ҫ���μ�ס

-----------------------------------------------------------------------------------------------------------------------------------

4.��ϰ��

�ٲ�ѯ��Ա���й�����ߵĹ�Ա��Ա���š�Ա�����������ʺͲ��źš�
select empno,ename,sal,deptno from emp
where sal = (select max(sal) from emp);

�ڵ�����ѯ����ۺ���ϰ�⣺
нˮ����1200�Ĺ�Ա�����ղ��ű�Ž��з��飬������ƽ��нˮ�������1500����ѯ�������ƽ�����ʣ����չ��ʵĵ���������С�
select avg(sal) avg_sal, deptno
from emp
where sal > 1200
group by deptno
having avg_sal > 1500
order by avg_sal desc;
˵�����˾�����ϰ�����SQL��������������˳��select��Ҫ��ѯ���ֶΣ�->from������һ�Ż��ļ��ű����ͼ��->where������������->group by(having)�����鼰������->order by�����ĸ����ļ����ֶν�������������У���
ע�⣺SqlServer4.1�п��ܲ�֧����order�����ʹ���麯��avg������˵��invalid use of group function��������ʾ�������е�Բ��ϣ�
����취����avg(sal)�������avg_sal��������order����о�ֱ��ʹ���������

�۵�ֵ���ӣ�
��ѯÿ����Ա�������ڵĲ�����
select ename,dname from emp,dept where (emp.deptno = dept.deptno);
���ߣ��Ƽ���(on�о�д����������where�о�д������������˾��ְ)
select ename,dname from emp join dept on(emp.deptno = dept.deptno);

�ܷǵ�ֵ���ӣ�
��ѯÿ����Ա�������乤�����ڵĵȼ�
select ename,grade from emp e join salgrade s on(e.sal between s.losal and s.hisal);

�ݲ�ѯ��Ա����2����ĸ����a�Ĺ�Ա�����������ڵ��������������ڵĵȼ���
���ű�����Ӳ�ѯ�������ӣ��ټ���where�����й��ˣ�
select ename,dname,grade
from emp e join dept d on(e.deptno = d.deptno)
join salgrade s on(e.sal between s.losal and s.hisal)
where ename not like '_a%';

�޲�ѯÿ����Ա���侭�������
�����ӣ�����ʵ��ֻ��һ�ű��������������ű����ã�ʹ�ñ������������֣�
select e1.ename,e2.ename from emp e1,emp e2 where (e1.mgr = e2.empno);
���ߣ����Ƽ���join��䣩
select e1.ename,e2.ename from emp e1 join emp e2 on(e1.mgr = e2.empno);

�߲�ѯÿ����Ա���侭���������������˾�ϰ屾��������û�о�����
�������ӣ��������в��������������ļ�¼Ҳ��ʾ��������
select e1.ename,e2.ename from emp e1 left join emp e2 on(e1.mgr = e2.empno);

���ѯÿ����Ա�������������ڲ��ŵĲ�����������û�й�Ա�Ĳ��ţ�
�������ӣ�����ұ��в��������������ļ�¼Ҳ��ʾ��������
select ename,dname from emp e right join dept d on(e.deptno = d.deptno);

���Ӳ�ѯ1����ѯÿ�������й�����ߵ��˵�������нˮ�Ͳ��ű��
�����ÿ�������е���߹��ʣ�
select max(sal) max_sal,deptno from emp group by deptno
��ʹ�����Ӳ�ѯ��
select ename,sal,e.deptno
from emp e join
(select max(sal) max_sal,deptno from emp group by deptno) t
on(e.sal = t.max_sal and e.deptno = t.deptno);

���Ӳ�ѯ2����ѯÿ������ƽ���������ڵĵȼ�
select deptno,avg_sal,grade from salgrade
join(select deptno,avg(sal) avg_sal from emp group by deptno) t
on(t.avg_sal between salgrade.losal and salgrade.hisal);
���ߣ�
select deptno,avg_sal,grade from
(select deptno,avg(sal) avg_sal from emp group by deptno) t
join salgrade s on(t.avg_sal between s.losal and s.hisal);

?�Ӳ�ѯ3����ѯÿ��������ƽ����нˮ�ȼ�
����ÿ���˵�нˮ�ȼ�
select ename,deptno,grade from emp join salgrade s 
on(emp.sal between s.losal and s.hisal);
�ٰ�����з�����ƽ��
select deptno,avg(grade) from
(select ename,deptno,grade from emp join salgrade s 
    on(emp.sal between s.losal and s.hisal)) t
group by deptno;

?�Ӳ�ѯ4����ѯ��Ա������Щ���Ǿ����ˣ�
select ename from emp where empno in(select distinct mgr from emp);
���ߣ�
select ename from emp join
(select distinct mgr from emp) t
on(emp.empno=t.mgr);

?�Ӳ�ѯ5����׼�ÿ⺯�������Ա����нˮ�����ֵ��
˼·��������ȫ��ͬ�Ĺ�Ա�����һ�ţ��ұ�һ�š�������е�нˮ���ұ��е�нˮ���бȽϣ�����е����нˮֵ�ض�������С���ұ��е�ĳһнˮֵ��
�����emp�������нˮ���µ�����нˮֵ
select distinct e1.sal from emp e1 join emp e2 on(e1.sal < e2.sal);
���ڴ��е�нˮֵ��Ϊ���нˮֵ
select distinct sal from emp where sal not in(select distinct e1.sal from emp e1 join emp e2 on(e1.sal < e2.sal));



?�Ӳ�ѯ6��ƽ��нˮ��ߵĲ��ŵĲ��ű��
���٣������ÿ�����ŵ�ƽ��нˮ�Ͳ��źţ����������һ�ű�
select avg(sal) avg_sal,deptno from emp group by deptno;
���ڣ������ƽ��нˮ���ֵ�����������һ��ֵ��
select max(avg_sal) from (select avg(sal) avg_sal,deptno from emp group by deptno) t;

���ۣ��Ԣٱ�ʹ�â��������в�ѯ����
select avg_sal,deptno from
(select avg(sal) avg_sal,deptno from emp group by deptno) t1
where avg_sal=
(select max(avg_sal) from (select avg(sal) avg_sal,deptno from emp group by deptno) t2);

˵��:��Oracle�п���ʹ���麯��Ƕ������΢��SQL���ĸ��ӳ̶ȣ����������Ƕ�ף���
select max(avg(sal)) from emp group by deptno;�����ƽ��нˮ���ֵ
ע�⣺�����麯��Ƕ����MySQL�в�������


?�Ӳ�ѯ7����ƽ��нˮ��ߵĲ��ŵĲ������ƣ����Ӳ�ѯ6�Ļ���֮�ϣ�
˵������ʵ��Ӧ���У��ﵽ���̶ֳȵ�SQL����Ѿ���Ƚϸ����ˡ�
select dname from dept where deptno = 
( select deptno from
    (select avg(sal) avg_sal,deptno from emp group by deptno) t1
    where avg_sal=
    (select max(avg_sal) from (select avg(sal) avg_sal,deptno from emp group by deptno) t2)
);

���ߣ�

select d.dname, avg(sal) avg_sal from emp e join dept d where e.deptno = d.deptno 
group by e.sal order by avg_sal desc limit 1;

-------------------------------------------------------------------------------------------------------------------------------------------------

?�Ӳ�ѯ8����ѯƽ��нˮ�ĵȼ���͵Ĳ�������
˵������ʵ��Ӧ���У�����ʹ�õ���˸��ӵ�SQL��䡣��Ҫ����һ������˼·��������Ϊ�˶����߼�������

����ƽ��нˮ
select avg(sal) avg_sal,deptno from emp group by deptno;

����ƽ��нˮ�ĵȼ�
select avg_sal,deptno,grade from
(select avg(sal) avg_sal,deptno from emp group by deptno) t
join salgrade s on(t.avg_sal between s.losal and hisal);

����ƽ��нˮ�ĵȼ���͵��Ǹ�ֵ
select min(grade) from
(  select avg_sal,deptno,grade from
    (select avg(sal) avg_sal,deptno from emp group by deptno) t
    join salgrade s on(t.avg_sal between s.losal and hisal)
) t3;

��ƽ��нˮ�ĵȼ���͵Ĳ��ŵĲ��ű��(���ں͢�������������ڿ���Ҫ��ѯ�ı����ۿ��ɲ�ѯ����)
select deptno from
(   select avg_sal,deptno,grade from
    (select avg(sal) avg_sal,deptno from emp group by deptno) t
    join salgrade s on(t.avg_sal between s.losal and hisal)
) t2
where grade=
(   select min(grade) from
    (   select avg_sal,deptno,grade from
        (select avg(sal) avg_sal,deptno from emp group by deptno) t
        join salgrade s on(t.avg_sal between s.losal and hisal)
    ) t3
);

��ƽ��нˮ�ĵȼ���͵Ĳ�������
select dname from dept where deptno=
(  select deptno from
    (   select avg_sal,deptno,grade from
        (select avg(sal) avg_sal,deptno from emp group by deptno) t
        join salgrade s on(t.avg_sal between s.losal and hisal)
    ) t2
    where grade=
    (   select min(grade) from
        (   select avg_sal,deptno,grade from
            (select avg(sal) avg_sal,deptno from emp group by deptno) t
            join salgrade s on(t.avg_sal between s.losal and hisal)
        ) t3
    )
);


���ߣ�������˼·��ʹ��join���Ӷ��ű�Ч��ͬ����Ģܺ͢ݣ������������΢��Щ��
�ܲ�ѯƽ��нˮ�ĵȼ���͵Ĳ��ŵĲ����������ű�š�ƽ�����ʺ͵ȼ�
(���ں͢�������������ں�dept��join���������ۿ��ɲ�ѯ����)
select dname,t2.deptno,avg_sal,grade from
(   select avg_sal,deptno,grade from
    (select avg(sal) avg_sal,deptno from emp group by deptno) t
    join salgrade s on(t.avg_sal between s.losal and hisal)
) t2
join dept on(t2.deptno=dept.deptno)
where t2.grade=
(   select min(grade) from
    (   select avg_sal,deptno,grade from
        (select avg(sal) avg_sal,deptno from emp group by deptno) t
        join salgrade s on(t.avg_sal between s.losal and hisal)
    ) t3
);

˵�����������и����Ľ��ĵط����������ظ������Σ����������Σ���
select avg_sal,deptno,grade from
(select avg(sal) avg_sal,deptno from emp group by deptno) t
join salgrade s on(t.avg_sal between s.losal and hisal)


�Ľ�1��
��Oracle��ʹ�ô�����ͼ�����Լ������SQL���
����ͼҲ��һ�ű����������ʵ��������Ȼ���ڱ�emp�ͱ�salgrade�У����Ӳ�ѯ����
create view v$_dept_avg_sal_info as
select avg_sal,deptno,grade from
(select avg(sal) avg_sal,deptno from emp group by deptno) t
join salgrade s on(t.avg_sal between s.losal and hisal);
�����������£�
select dname,t2.deptno,avg_sal,grade from
v$_dept_avg_sal_info t2
join dept on(t2.deptno=dept.deptno)
where t2.grade=
(   select min(grade) from v$_dept_avg_sal_info
);

�Ľ�2��
MySQL5.0�д�����ͼ(MySQL5���ص�(��ͼ))��
��������֤��
create view v_dept_avg_sal_info as
select avg_sal,deptno,grade from
(select avg(sal) avg_sal,deptno from emp group by deptno) t
join salgrade s on(t.avg_sal between s.losal and hisal);
��������Ϊ��
select dname,v2.deptno,avg_sal,grade from
v_dept_avg_sal_info v2
join dept on(v2.deptno=dept.deptno)
where v2.grade=
(   select min(grade) from v_dept_avg_sal_info
);
