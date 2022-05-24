-- Cleansed FACTInternetSales Table
SELECT 
  [ProductKey], 
  [OrderDateKey], 
  [DueDateKey], 
  [ShipDateKey], 
  [CustomerKey], 
--[PromotionKey],
--[CurrencyKey],
--  ,[SalesTerritoryKey],
  [SalesOrderNumber], 
--[SalesOrderLineNumber], 
--[RevisionNumber],
--[OrderQuantity], 
--[UnitPrice], 
--[ExtendedAmount],
--[UnitPriceDiscountPct],
--[DiscountAmount],
--[ProductStandardCost],
--[TotalProductCost],
  [SalesAmount]
--[TaxAmt],
--[Freight],
--[CarrierTrackingNumber],
--[CustomerPONumber], 
--[OrderDate], 
--[DueDate], 
--[ShipDate],
FROM 
  [AdventureWorksDW2019].[dbo].[FactInternetSales]
WHERE 
  LEFT (OrderDateKey, 4) >= YEAR(GETDATE()) -2 -- Allows me to always only bring the most recent two years from extraction.
ORDER BY
  OrderDateKey ASC