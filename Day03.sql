Select * from dbo.tbEmployee

Select YEAR('2023/05/16')

Select *, YEAR(JoinDate) as JoinYear from dbo.tbEmployee
order by JoinYear

Select DATENAME(dw,'2023/05/16')

Select *, YEAR(JoinDate) as JoinYear, DATENAME(mm,JoinDate)as JoinMonth 
from dbo.tbEmployee
order by JoinYear

select GetDate()

select DateDiff(mm,'2020/05/16',GetDate())

Select *, YEAR(JoinDate) as JoinYear, DATENAME(mm,JoinDate)as JoinMonth ,
DATEDIFF(yy,JoinDate,GetDate()) as LongYear
from dbo.tbEmployee
order by JoinYear


Select *, YEAR(JoinDate) as JoinYear, DATENAME(mm,JoinDate)as JoinMonth ,
DATEDIFF(yy,JoinDate,GetDate()) as LongYear,
concat(FirstName + ' ' ,LastName) as FullName
from dbo.tbEmployee
order by JoinYear


Select *, YEAR(JoinDate) as JoinYear, DATENAME(mm,JoinDate)as JoinMonth ,
DATEDIFF(yy,JoinDate,GetDate()) as LongYear,
concat(FirstName + ' ' ,LastName) as FullName,
(Salary*.055) as Tax
from dbo.tbEmployee
order by JoinYear

select ROUND(10.691,-1)

Select *, YEAR(JoinDate) as JoinYear, DATENAME(mm,JoinDate)as JoinMonth ,
DATEDIFF(yy,JoinDate,GetDate()) as LongYear,
concat(FirstName + ' ' ,LastName) as FullName,
round((Salary*.055),1) as Tax, Upper(FirstName)
from dbo.tbEmployee
order by JoinYear

select SUBSTRING('Mohammad-Sbeeh',1,3)
select CHARINDEX('-','Mohammad-Sbeeh')
Select LEN('Mohammad-Sbeeh')

Select SUBSTRING('Mohammad-Sbeeh',1,
 CHARINDEX('-','Mohammad-Sbeeh')-1)

