CREATE DATABASE SCOPED CREDENTIAL cred_gtm
with Identity = 'Managed Identity'

Create EXTERNAL DATA SOURCE source_silver
with (
    LOCATION = 'https://awstoragedatalakegtm.blob.core.windows.net/silver',
    CREDENTIAL = cred_gtm
)

Create EXTERNAL DATA SOURCE source_gold
with (
    LOCATION = 'https://awstoragedatalakegtm.blob.core.windows.net/gold',
    CREDENTIAL = cred_gtm
)

CREATE EXTERNAL FILE FORMAT format_parquet
with (
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)

---------------------------------------------------------------------------------------------------------
----Create External Table External Sales--------
----------------------------------------------------------------------------------------------------------
create external table Serving.extsales
with (
        LOCATION = 'extsales',
        DATA_SOURCE = source_gold,
        FILE_FORMAT = format_parquet
) as 
select * from Serving.Sales;


select * from Serving.extsales;


