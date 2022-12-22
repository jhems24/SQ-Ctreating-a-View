CREATE VIEW vwOrdersALL
AS

-- Combined summary of sales and promo from both Internet Sales and Reseller sales in 2012 and 2013.

SELECT 
    --Sales and promo summary from Internet Sales
    fs.SalesOrderNumber AS InvoiceNumber,
    fs.SalesOrderLineNumber AS InvoiceLineNumber,
    fs.OrderDate AS OrderDate,
    fs.SalesAmount AS SalesAmount,
    fs.TaxAmt AS TaxAmount,
    fs.Freight AS FreightAmount,
    fs.OrderQuantity AS Quantity,
 
    dp.EnglishProductName AS ProductName,
    dp.Status AS [Status],
 
    dpsc.EnglishProductSubcategoryName AS ProductSubCategory,
 
    dpc.EnglishProductCategoryName  AS ProductCategory,