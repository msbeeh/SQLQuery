Select * from SalesLT.Product;

Select Name, ListPrice, StandardCost from SalesLT.Product;

Select [Name],[ListPrice],[StandardCost] from SalesLT.Product;

Select [Name],[ListPrice],[StandardCost] from [SalesLT].[Product]

Select Name, [ListPrice],[StandardCost], ListPrice-StandardCost from [SalesLT].[Product]

Select Name, [ListPrice],[StandardCost], ListPrice-StandardCost as Markup from [SalesLT].[Product]

Select [ProductNumber],Color,Size, Color+ ', '+ Size as ProductDetails from SalesLT.Product


Select CAST( ProductID as varchar(10)) +':' + [Name] as ProductInfo from SalesLT.Product;

Select Convert(varchar(10), ProductID) +':' + [Name] as ProductInfo from SalesLT.Product;


Select SellStartDate ,
CONVERT(varchar,SellStartDate) as StartDate1,
CONVERT(varchar,SellStartDate,126) as StartDate2

from SalesLT.Product;


select Size, Try_CAST(Size as int) from SalesLT.Product;

select STR(ProductID) from SalesLT.Product

select Size, ISNULL( Try_CAST(Size as int),0) from SalesLT.Product;


Select Color from SalesLT.Product;
Select Color, NullIF( Color,'Multi') from SalesLT.Product;
Select Color, REPLACE(Color,'Multi','Blue') from SalesLT.Product;

select SellStartDate, SellEndDate from SalesLT.Product;

select SellStartDate, SellEndDate, Coalesce(SellEndDate,SellStartDate) from SalesLT.Product;


select Name from SalesLT.Product;

select Name,
Case When SellEndDate IS null then 'Currently for sale'
else 'No longer avaiable'
end as SalesStatus
from SalesLT.Product;


select Name,
Cast(Case When SellEndDate IS null then 1
else 0
end as bit) as Sales
from SalesLT.Product;


select Name, size from SalesLT.Product;



select Name,

case size
when 'S' Then 'Small'
When 'M' then 'Medium'
When 'L' then 'Large'
When 'XL' then 'Extra-Large'
else ISNULL(Size, 'N/A')
End as ProductSize

from SalesLT.Product;

Select * from SalesLT.Product order by ProductID ASC
Select * from SalesLT.Product order by ProductID Desc

Select * from SalesLT.Product order by ListPrice Desc
Select * from SalesLT.Product order by ListPrice Desc, ProductID desc

select Top (2) * from SalesLT.Product
order by ListPrice Desc

select Top (2) with ties * from SalesLT.Product
order by ListPrice Desc

select Top (2) percent with ties * from SalesLT.Product
order by ListPrice Desc

select Top (2) percent * from SalesLT.Product
order by ListPrice Desc
