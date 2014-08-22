--�������ݿ�
create database SQL50
--��SQL50���ݿ�
use SQL50
--������Ա��
drop table Emp
drop table Dept
create table Emp
(  Empno numeric(5,0) not null,--��Ա�ı��
   Ename nvarchar(10), --��Ա����
   Job nvarchar(9),    --��Ա��ְλ
   Mgr numeric(5,0),--�ϼ����ܵı��
   Hiredate datetime, --��ְ����
   Sal numeric(7,2),--н��
   Comm numeric(7,2),--Ӷ��
   Deptno numeric(2,0) --���ű��
)
go

--�������ű�

create table Dept
(
   Deptno numeric(2),--���ű��
   Dname nvarchar(14),--��������
   Loc nvarchar(13)--�������ڵ�
)
go
--��������
insert into Emp values
(7369,'SMITH','CLERK',7902,'2000-12-17',800,NULL,20)
insert into Emp values
(7499,'allen','SALESMAN',7698,'2001-2-20',1600,300,30)
insert into Emp values
(7521,'WARD','SALESMAN',7698,'2001-2-22',1250,500,30)
insert into Emp values
(7566,'JONES','MANAGER',7839,'2001-4-2',2975,NULL,20)
insert into Emp values
(7654,'MARTIN','SALESMAN',7698,'2001-9-28',1250,1400,30)
insert into Emp values
(7698,'BLAKE','MANAGER',7839,'2001-5-1',2850,NULL,30)
insert into Emp values
(7782,'CLARK','MANAGER',7839,'2001-6-9',2450,NULL,10)
insert into Emp values
(7788,'scott','ANALYST',7566,'2002-12-9',3000,NULL,20)
insert into Emp values
(7839,'king','PRESIDENT',NULL,'2001-11-17',5000,NULL,10)
insert into Emp values
(7844,'TURNER','SALESMAN',7698,'2001-9-8',1500,0,30)
insert into Emp values
(7876,'ADAMS','CLERK',7788,'2003-1-12',1100,NULL,20)
insert into Emp values
(7900,'JAMES','CLERK',7698,'2001-3-12',950,NULL,30)
insert into Emp values
(7902,'FORD','ANALYST',7566,'2001-3-12',3000,NULL,20)
insert into Emp values
(7934,'MILLER','CLERK',7782,'2002-01-23',1300,NULL,10)
GO
--��������
insert into Dept values(10,'ACCOUNTING','NEW YORK')
insert into Dept values(20,'RESEARCH','DALLAS')
insert into Dept values(30,'SALEA','CHICAGO')
insert into Dept values(40,'OPERATIONS','BOSTON')
GO

--1����ѯ���й�Ա

select  Empno ,Ename ,Job ,Mgr ,Hiredate ,Sal ,Comm , Deptno from  Emp 

--2����ѯ���в���

select Deptno,Dname,Loc from Dept

--3����ѯû��Ӷ��COMM�������й�Ա����Ϣ

select Empno ,Ename ,Job ,Mgr ,Hiredate ,Sal ,Comm , Deptno from Emp 
where Comm is null

--4����ѯн��sal����Ӷ��COMM����������2000�����еĹ�Ա��Ϣ

select Empno ,Ename ,Job ,Mgr ,Hiredate ,Sal ,Comm , Deptno from Emp 
where (Sal+Comm)>2000 or sal>2000 or comm>2000

--5��ѡ����30�еĹ�Ա

select Empno ,Ename ,Job ,Mgr ,Hiredate ,Sal ,Comm , Deptno from Emp
 where Deptno=30

--6���г����а���Ա��'clerk'������������źͲ���

select Ename,Empno ,deptno from Emp where Job='CLERK'

--7���ҳ�Ӷ�����н��Ĺ�Ա

select Empno ,Ename ,Job ,Mgr ,Hiredate ,Sal ,Comm , Deptno from Emp
 where Comm>sal

--8���ҳ�Ӷ�����н��60%�Ĺ�Ա

select Empno ,Ename ,Job ,Mgr ,Hiredate ,Sal ,Comm , Deptno from Emp
 where Comm>(sal*0.6)

--9���ҳ�����10�����о���Ͳ���20�е����а���Ա����ϸ����

select Empno ,Ename ,Job ,Mgr ,Hiredate ,Sal ,Comm , Deptno from Emp 
where (Job='MANAGER' and deptno=10)or (Job='CLERK'and Deptno=20) 

--10���ҳ�����10�����о�������20�����а���Ա���Ȳ��Ǿ����ֲ��ǰ���Ա����н��>=2000�����й�Ա����ϸ����

select Empno ,Ename ,Job ,Mgr ,Hiredate ,Sal ,Comm , Deptno from Emp 
where (Job='MANAGER' and deptno=10) or (Job='CLERK'and Deptno=20) or(job not in('MANAGER','CLERK')and sal>=2000)

--11���ҳ���ȡӶ��Ĺ�Ա�Ĳ�ͬ����

select Ename,Job from Emp where comm  is not null

--12���ҳ�����ȡӶ�����ȡӶ�����100�Ĺ�Ա

select Empno ,Ename ,Job ,Mgr ,Hiredate ,Sal ,Comm , Deptno from Emp
 where comm is null or comm<100

--13���ҳ�����8��֮ǰ�ܹ͵Ĺ�Ա

select Empno ,Ename  from Emp
 where Hiredate<(dateadd(yy,-8,getdate()))

--14����ʾ����ĸ�Ǵ�д�����й�Ա������

select Ename from Emp where Ename collate chinese_PRC_CS_AI like '[A-Z]%'


--15����ʾ����Ϊ5���ַ��Ĺ�Ա������

select Ename from Emp where Ename like '_____'

--16����ʾ���С�R���Ĺ�Ա������

select Ename from Emp where Ename like '%R%'

--17����ʾ�����С�R�������Ա������

--select Ename from Emp where Ename like '%[^R]%'

select Ename from Emp where Ename not like '%R%'


--18����ʾ������A�������й�Ա����������A���������е�λ��

select Ename ,charindex('A',Ename) ���� from Emp where Ename like '%A%'

--19����ʾ���й�Ա���������á�a���滻��A��

select replace(Ename,'A','a') from Emp

--20����ʾ���й�Ա��������ǰ�����ַ�

select Ename, substring(Ename,1,3)as ������ǰ�����ַ� from Emp

--21����ʾ��Ա����ϸ���ϣ�����������

select Empno ,Ename ,Job ,Mgr ,Hiredate ,Sal ,Comm , Deptno from Emp order  by Ename

--22����ʾ��Ա������������������ޣ������ϵĹ�Ա������ǰ��

select Empno ,Ename ,Job ,Mgr ,Hiredate ,Sal ,Comm , Deptno from Emp order  by Hiredate

--23����ʾ���й�Ա��������������н�𣬰������ڵĹ����Ľ���˳�����򣬶�������н������

select Ename ,Job, Sal from Emp order  by Job desc,sal

--24����ʾ��һ����Ϊ30�����������й�Ա����н�𣬺���С��

select ceiling((sal/30)) from Emp

--25���ҳ��ڣ��κ���ݵģ�2����Ƹ�����й�Ա

select Ename ,Hiredate from emp where datepart(month,Hiredate)=2

--26����ÿ����Ա����ʾ����빫˾������

select Ename,datediff(d,Hiredate,getdate()) from emp 

--27���г�������һ����Ա�����в���

select Dname,count(E.deptno) ��Ա���� from dept D join Emp E 
on D.deptno=E.deptno group by Dname

--28���г��������������͹���

select job, min(sal) ��͹���  from Emp group by job

--29���г��������ŵ�MANAGER(����)�����н��

select deptno ���ű��, min(sal) ��͹���  from Emp 
where job='MANAGER' group by deptno

--30���г�н����ڹ�˾ƽ�������й�Ա

select Ename  from Emp where sal>(select avg(sal) from Emp)  

--31���г����ֹ����������н�𣬲�ʹ���н�����1500

select job,min(sal) ���н�� from Emp 
--where sal >1500
 group by job 
 having min(sal)>1500
 select * from Emp order by job

--32����ʾ���й�Ա�������ͼ��빫˾����ݺ��·ݣ�����Ա�ܹ��������������򣬽�������ݵ���Ŀ������ǰ��

select Ename ,datepart(year,Hiredate) ���,datepart(month,Hiredate) �·� from Emp 
order by datepart(year,Hiredate),datepart(month,Hiredate)

--33����ʾ���й�Ա�������Լ���8��������޵�����

select Ename ,dateadd(yy,8,Hiredate) ��8��������޵����� from Emp 
order by dateadd(yy,8,Hiredate)

--34����ʾ���й�Ա�ķ������ޣ��ܵ��������ܵ��������ܵ�����

select Ename,datediff(dd,hiredate,getdate())�ܵ�����,datediff(mm,Hiredate,getdate()) �ܵ����� ,
datediff(yy,Hiredate,getdate())�ܵ����� from emp 

--35���г���������ֶ���������й�Ա����н������������н�Թ�Ա����������нָ��Աÿ�µ��������ܹ�12���µ��ۼ�

--������н��ͼ
 create view  View_AnnualPay
 as
  select Ename ��Ա ,sal*12 ��н  from Emp where comm is null union 
  select Ename  ��Ա, ((sal+comm)*12) ��н from  Emp where comm is not null --order by (((sal+comm)*12)or(SAl*12))
 go
 
 select *  from View_AnnualPay order by ��н 
 
--36���г���нǰ5���Ĺ�Ա
 
select top 5 * from View_AnnualPay order by ��н desc

--37���г���н����10000�Ĺ�Ա

select * from View_AnnualPay  where ��н<10000

--38���г���Ա��ƽ����н��ƽ����н

select avg(��н/12) ƽ����н,avg(��н) ƽ����н  from  View_AnnualPay

--39���г��������ƺ���Щ���ŵĹ�Ա��ͬʱ�г���Щû�й�Ա�Ĳ���

select Ename,D.Deptno from Emp E right join Dept D on D.deptno=E.deptno

--40���г�ÿ�����ŵ���Ϣ�Լ��ò����й�Ա������

select D.Deptno,Dname ,Loc  ,count(E.Deptno)�������� from  Dept D left join Emp E on D.Deptno=E.Deptno group by D.Deptno,Dname ,Loc

--41���г�н��ȡ�SMITH��������й�Ա

select Ename,sal from Emp where sal>(select sal from emp where Ename='SMITH')

--42���г����й�Ա����������ֱ���ϼ�������

select   E.Ename ��Ա����,E.job,E1.Ename ��˾����,E1.job from Emp E inner join Emp E1 on E1.mgr=E.Empno 
--���󣬹�Ա���ϼ�����

--43���г���ְ����������ֱ���ϼ������й�Ա

select   E.Ename ��Ա����,E.job,E1.Ename ��˾����,E1.job from Emp E inner join Emp E1 on E1.mgr=E.Empno 
where  E.job<>E1.job and E.Hiredate>E1.Hiredate
--���󣬹�Ա���ϼ�����


--44���г����а���Ա����CLERK�������������䲿������

select Ename,Dname from Emp E join Dept D on D.deptno=E.deptno where job='CLERK'

--45���г����¡�SALES��(����)�����Ĺ�Ա���������ٶ���֪�����۲��ű��

select Ename from Emp where job='SALESMAN'

--46���г��롰SCOTT��������ͬ���������й�Ա

select Ename From Emp where job=(select job from Emp where Ename='SCOTT')

--47���г�ĳЩ��Ա��������н�����������ǵ�н����ڲ���30���κ�һ����Ա��н��

select Ename,sal from Emp where sal in(select sal from Emp where deptno=30)and deptno <>30

--48���г�ĳЩ��Ա��������н�����������ǵ�н����ڲ���30�����й�Ա��н��

select Ename,sal from Emp where sal=(select sum(Sal) from Emp where Deptno=30)

--49���г�����ͬһ�ֹ����������ڲ�ͬ���ŵĹ�Ա�Ĳ�ͬ���

select E.Ename,E.job,E1.Ename,E1.job from Emp E inner join Emp E1 on E.Deptno<>E1.Deptno and E.job=E1.job


--50���г����й�Ա�Ĺ�Ա���ơ��������ƺ�н��

select Ename,Dname,sal from Emp E join Dept D on E.deptno=D.deptno
