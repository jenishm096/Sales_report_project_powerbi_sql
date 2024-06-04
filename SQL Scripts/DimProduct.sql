--Cleaned DimProduct Table
SELECT p.ProductKey
      ,p.ProductAlternateKey as ProductItemCode
      --,p.ProductSubcategoryKey
      --,p.WeightUnitMeasureCode
      --,p.SizeUnitMeasureCode
      ,p.EnglishProductName as ProductName
	  ,ps.EnglishProductSubcategoryName as SubCategory --joined from DimSubCategory
	  ,pc.EnglishProductCategoryName as Category--joined from DimCategory
      --,p.SpanishProductName
      --,p.FrenchProductName
      --,p.StandardCost
      --,p.FinishedGoodsFlag
      ,p.Color as ProductColor
      --,p.SafetyStockLevel
      --,p.ReorderPoint
      --,p.ListPrice
      ,p.Size as ProductSize
      --,p.SizeRange
      --,p.Weight
      --,p.DaysToManufacture
      ,p.ProductLine
      --,p.DealerPrice
      --,p.Class
      --,p.Style
      ,p.ModelName
      --,p.LargePhoto
      --,p.EnglishDescription
      --,p.FrenchDescription
      --,p.ChineseDescription
      --,p.ArabicDescription
      --,p.HebrewDescription
      --,p.ThaiDescription
      --,p.GermanDescription
      --,p.JapaneseDescription
      --,p.TurkishDescription
      --,p.StartDate
      --,p.EndDate
      ,ISNULL(p.Status,'Outdated') as ProductStatus
  FROM AdventureWorksDW2019.dbo.DimProduct as p
  Left join DimProductSubcategory as ps on p.ProductSubcategoryKey = ps.ProductSubcategoryKey
  left join	 DimProductCategory as pc on  ps.ProductCategoryKey=pc.ProductCategoryKey
  order by p.ProductKey asc;