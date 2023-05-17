select * from dbo.tbHrEmployee

select * from dbo.tbEmployee where DepartmentId=2

Insert into dbo.tbHrEmployee(FirstName,LastName,Salary,JoinDate,DepartmentId,ManagerId)
select FirstName,LastName,Salary,JoinDate,DepartmentId,ManagerId
from dbo.tbEmployee
where DepartmentId=2
