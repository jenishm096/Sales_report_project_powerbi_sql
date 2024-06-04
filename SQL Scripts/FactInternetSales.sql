SELECT ProductKey
      ,i.OrderDateKey
      ,i.DueDateKey
      ,i.ShipDateKey
      ,i.CustomerKey
      --,i.PromotionKey
      --,i.CurrencyKey
      --,i.SalesTerritoryKey
		,i.SalesOrderNumber
      --,i.SalesOrderLineNumber
      --,i.RevisionNumber
      --,i.OrderQuantity
      --,i.UnitPrice
      --,i.ExtendedAmount
      --,i.UnitPriceDiscountPct
      --,i.DiscountAmount
      --,i.ProductStandardCost
      --,i.TotalProductCost
		,i.SalesAmount
      --,i.TaxAmt
      --,i.Freight
      --,i.CarrierTrackingNumber
      --,i.CustomerPONumber
      --,i.OrderDate
      --,i.DueDate
      --,i.ShipDate
FROM 
	AdventureWorksDW2019.dbo.FactInternetSales as i
Where
	LEFT(OrderDateKey,4)>=YEAR(getdate())-2  --Brings  2 years back data from current year
order by 
	OrderDateKey asc
	
