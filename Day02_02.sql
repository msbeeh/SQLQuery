Select * from tbDepartment

select * from tbEmployee

select FirstName, LastName, Salary  from tbEmployee
inner join tbDepartment
on tbEmployee.DepartmentId = tbDepartment.Id 

select FirstName, LastName, Salary, Title  from tbEmployee
inner join tbDepartment
on tbEmployee.DepartmentId = tbDepartment.Id 

select tbEmployee.FirstName, tbEmployee.LastName, tbEmployee.Salary, tbDepartment.Title from tbEmployee
inner join tbDepartment
on tbEmployee.DepartmentId = tbDepartment.Id 

select Emp.FirstName, Emp.LastName, Emp.Salary, Dept.Title from tbEmployee AS Emp
inner join tbDepartment AS Dept
on Emp.DepartmentId = Dept.Id 

select Emp.FirstName, Emp.LastName, Emp.Salary, Dept.Title as [Department Name] from tbEmployee AS Emp
inner join tbDepartment AS Dept
on Emp.DepartmentId = Dept.Id 

select Emp.FirstName, Emp.LastName, Emp.Salary, Dept.Title as [Department Name] from tbEmployee AS Emp
Left outer join tbDepartment AS Dept
on Emp.DepartmentId = Dept.Id 

select Emp.FirstName, Emp.LastName, Emp.Salary, Dept.Title as [Department Name] from tbEmployee AS Emp
Right outer join tbDepartment AS Dept
on Emp.DepartmentId = Dept.Id 

select Emp.FirstName, Emp.LastName, Emp.Salary, Dept.Title as [Department Name] from tbEmployee AS Emp
full outer join tbDepartment AS Dept
on Emp.DepartmentId = Dept.Id 

select Emp.FirstName, Emp.LastName, Emp.Salary, Dept.Title as [Department Name] from tbEmployee AS Emp
cross join tbDepartment AS Dept

Select (Emp.FirstName+ ' ' + Emp.LastName)  as Employee, (Mag.FirstName+ ' ' + Mag.LastName)  as Manager
from dbo.tbEmployee as Emp
Left Join tbEmployee as Mag
On  Mag.Id =Emp.ManagerId


Select (Emp.FirstName+ ' ' + Emp.LastName)  as Employee, (Mag.FirstName+ ' ' + Mag.LastName)  as Manager, Mag.Id
from dbo.tbEmployee as Emp
Left Join tbEmployee as Mag
On  Mag.Id =Emp.ManagerId
where Mag.Id = 1


Select * from tbEmployee

select * from tbEmployeeOfMonth
select EmployeeId from tbEmployeeOfMonth

Select * from tbEmployee
where Id in
(select EmployeeId from tbEmployeeOfMonth)



select * from tbEmployee
where exists(select 1 from tbEmployeeOfMonth where tbEmployee.Id = tbEmployeeOfMonth.EmployeeId)








select *,


(select Count(tbEmployeeOfMonth.Id) from tbEmployeeOfMonth 
where tbEmployeeOfMonth.EmployeeId = tbEmployee.Id) as Win


from tbEmployee 





