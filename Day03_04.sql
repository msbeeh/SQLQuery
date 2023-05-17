Select * from dbo.tbEmployee

Insert into dbo.tbEmployee
values
('Employee','H',1250,Getdate(),1,1);

Insert into dbo.tbEmployee (LastName,FirstName,Salary,JoinDate)
values
('K','Employee',1800,default)

Insert into dbo.tbEmployee (LastName,FirstName,Salary,JoinDate)
values
('L','Employee',850,default),
('M','Employee',760,default),
('N','Employee',921,default)



Insert into dbo.tbEmployee (LastName,FirstName,Salary,JoinDate)
values
('O','Employee',1800,default)

select IDENT_CURRENT('dbo.tbEmployee') as NewEmployeeId