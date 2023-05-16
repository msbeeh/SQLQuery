Select * from SalesLT.Product
Order by ListPrice

Select * from SalesLT.Product
Order by ListPrice offset 0 rows fetch Next 10 rows only; 

Select * from SalesLT.Product
Order by ListPrice offset 10 rows fetch Next 10 rows only; 

Select Color from SalesLT.Product;
Select All Color from SalesLT.Product;
Select distinct Color from SalesLT.Product;
Select distinct Color,Size from SalesLT.Product;

select * from SalesLT.Product
where ProductCategoryID=18

select * from SalesLT.Product
where ProductCategoryID<>18

Select * from SalesLT.Product
where ListPrice>1000

Select * from SalesLT.Product
where ListPrice>1000 And ProductCategoryID=18

Select * from SalesLT.Product
where ListPrice>1000 Or ProductCategoryID=18

Select * from SalesLT.Product
where SellEndDate is not null

Select * from SalesLT.Product
where Name Like '%Logo%'

-- FR-x00x-00     --> x any letter

Select * from SalesLT.Product
where ProductNumber Like 'FR-_[0-9][0-9]_-[0-9][0-9]'

select * from SalesLT.Product
where SellEndDate between '2006/1/1' And '2006/12/31'

select * from SalesLT.Product
where ProductCategoryID in (5,6,7) 
order by ProductCategoryID

select * from SalesLT.Product
where ProductCategoryID in (5,6,7)  And SellEndDate is null
order by ProductCategoryID
