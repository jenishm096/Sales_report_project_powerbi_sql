--Cleaned DIM_Customer_Table
SELECT 
  c.CustomerKey --,[GeographyKey]
  --,[CustomerAlternateKey]
  --,[Title]
  , c.FirstName --,[MiddleName]
  , c.LastName --Combined FirstName and LastName
  , FirstName + LastName as FullName --,[NameStyle]
  --,[BirthDate]
  --,[MaritalStatus]
  --,[Suffix]
  , Case c.Gender when 'M' then 'Male' when 'F' then 'Female' end as Gender --,[EmailAddress]
  --,[YearlyIncome]
  --,[TotalChildren]
  --,[NumberChildrenAtHome]
  --,[EnglishEducation]
  --,[SpanishEducation]
  --,[FrenchEducation]
  --,[EnglishOccupation]
  --,[SpanishOccupation]
  --,[FrenchOccupation]
  --,[HouseOwnerFlag]
  --,[NumberCarsOwned]
  --,[AddressLine1]
  --,[AddressLine2]
  --,[Phone]
  , c.DateFirstPurchase as DateFirstPurchase --,[CommuteDistance]
  , g.city as CustomerCity --Joined customer city from DimGeography
FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] as c 
  Left join dbo.DimGeography as g on g.GeographyKey = c.GeographyKey 
order by 
  c.CustomerKey asc;
