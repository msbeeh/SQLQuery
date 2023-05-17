select * from dbo.tbEmployee

Update dbo.tbEmployee
Set DepartmentId=1
where DepartmentId is null


delete from dbo.tbEmployee
where Salary<1000;

truncate Table dbo.tbEmployee



Merge [dbo].[tbEmployee] as Target
Using [dbo].[tbEmployeeV2] as source
On (Target.LastName = source.LastName)
when Not Matched by Target
then Insert([FirstName],[LastName],
[Salary],[JoinDate],[DepartmentId],[ManagerId])
Values (source.[FirstName],source.[LastName],
source.[Salary],source.[JoinDate],source.[DepartmentId]
,source.[ManagerId])

--when Not Matched by source
--then delete

when Matched then Update Set

Target.Salary = source.Salary;


Merge [dbo].[tbEmployeeV2] as Target
Using [dbo].[tbEmployee] as source
On (Target.LastName = source.LastName)
when Not Matched by Target
then Insert([FirstName],[LastName],
[Salary],[JoinDate],[DepartmentId],[ManagerId])
Values (source.[FirstName],source.[LastName],
source.[Salary],source.[JoinDate],source.[DepartmentId]
,source.[ManagerId])

when Matched then Update Set

Target.Salary = source.Salary;
