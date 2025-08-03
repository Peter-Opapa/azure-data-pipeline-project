CREATE DATABASE SCOPED CREDENTIAL cred_peter
WITH
 IDENTITY='Managed Identity'

 CREATE EXTERNAL DATA SOURCE source_silver
 WITH(
    LOCATION='https://opapastoragedatalake.dfs.core.windows.net/silver',
    CREDENTIAL= cred_peter
 )

  CREATE EXTERNAL DATA SOURCE source_gold
 WITH(
    LOCATION='https://opapastoragedatalake.dfs.core.windows.net/gold',
    CREDENTIAL= cred_peter
 )

 CREATE EXTERNAL FILE FORMAT format_parquet
 WITH(
      FORMAT_TYPE=PARQUET,
      DATA_COMPRESSION='org.apache.hadoop.io.compress.SnappyCodec'
 )
--CREATING EXTERNAL TABLE WITH CETAS
 CREATE EXTERNAL TABLE gold.extsales
 WITH(
    LOCATION = 'extsales',
	DATA_SOURCE =source_gold,
	FILE_FORMAT = format_parquet
 )AS
 SELECT * FROM gold.sales