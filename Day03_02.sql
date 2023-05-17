Select * from SalesLT.Product

Select Name, Size from SalesLT.Product

select ISNUMERIC('1')

Select Name, Size from SalesLT.Product
where ISNUMERIC(size)=1

select IIF(1=2,'Yes!','No')

-- (1---> Yes/True) (0---> No/False)
Select Name, IIF(ISNUMERIC(Size)=1,'Numeric','Non-Numeric') as IsNumericSize
from SalesLT.Product

Select count(*) as Product
from SalesLT.Product

Select * from SalesLT.Product

Select Count(distinct ProductCategoryID) as ProductCategoryCount
from SalesLT.Product

Select count(*) as Product,
Count(distinct ProductCategoryID) as ProductCategoryCount,
Sum(ListPrice) as TotalListPrice,
AVG(ListPrice) as AvgListPrice,
Max(ListPrice) as TopListPrice,
Min(ListPrice) as LowListPrice
from SalesLT.Product




Select count(*) as Product,
Count(distinct ProductCategoryID) as ProductCategoryCount,
Sum(ListPrice) as TotalListPrice,
AVG(ListPrice) as AvgListPrice,
Max(ListPrice) as TopListPrice,
Min(ListPrice) as LowListPrice
from SalesLT.Product
where ProductCategoryID=18


select * from SalesLT.Product

Select ProductCategoryID, count(*) from SalesLT.Product
group by ProductCategoryID


Select DepartmentId, count(*) from HrDb.dbo.tbEmployee
group by DepartmentId



Select dep.Title , count(*) as EmployeeCount

from HrDb.dbo.tbEmployee as emp
Join HrDb.dbo.tbDepartment as dep

on emp.DepartmentId = dep.Id

group by dep.Title



Select dep.Title , count(emp.ID) as EmployeeCount

from HrDb.dbo.tbEmployee as emp
right outer Join HrDb.dbo.tbDepartment as dep

on emp.DepartmentId = dep.Id

group by dep.Title

select *, RANK() over (PARTITION BY departmentID order by salary desc) AS [Rank]

from HrDb.dbo.tbEmployee

select top (1) with ties *, RANK() over (PARTITION BY departmentID order by salary desc) 
AS EmployeeRank
from HrDb.dbo.tbEmployee
order by RANK() over (PARTITION BY departmentID order by salary desc) 

select top (1) with ties *, RANK() over (order by salary desc) 
AS EmployeeRank
from HrDb.dbo.tbEmployee
order by RANK() over (order by salary desc) 







