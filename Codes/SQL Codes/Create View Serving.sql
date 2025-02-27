CREATE VIEW Serving.Calendar
AS Select * From OPENROWSET(
    BULK 'https://awstoragedatalakegtm.blob.core.windows.net/silver/Calendar/', FORMAT= 'PARQUET') as query2;

CREATE view Serving.Customers
AS Select * From OPENROWSET(
    BULK 'https://awstoragedatalakegtm.blob.core.windows.net/silver/Customers/', FORMAT= 'PARQUET') as query2;
CREATE view Serving.Product_Categories
AS Select * From OPENROWSET(
    BULK 'https://awstoragedatalakegtm.blob.core.windows.net/silver/Product_Categories/', FORMAT= 'PARQUET') as query2;
CREATE view Serving.Product_Subcategories
AS Select * From OPENROWSET(
    BULK 'https://awstoragedatalakegtm.blob.core.windows.net/silver/Product_Subcategories/', FORMAT= 'PARQUET') as query2;
CREATE view Serving.Products
AS Select * From OPENROWSET(
    BULK 'https://awstoragedatalakegtm.blob.core.windows.net/silver/Products/', FORMAT= 'PARQUET') as query2;
CREATE view Serving.Returns
AS Select * From OPENROWSET(
    BULK 'https://awstoragedatalakegtm.blob.core.windows.net/silver/Returns/', FORMAT= 'PARQUET') as query2;
CREATE view Serving.Sales
AS Select * From OPENROWSET(
    BULK 'https://awstoragedatalakegtm.blob.core.windows.net/silver/Sales/', FORMAT= 'PARQUET') as query2;
CREATE view Serving.Territories
AS Select * From OPENROWSET(
    BULK 'https://awstoragedatalakegtm.blob.core.windows.net/silver/Territories/', FORMAT= 'PARQUET') as query2;



