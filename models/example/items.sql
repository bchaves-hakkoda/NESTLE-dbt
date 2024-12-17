{{ config(materialized='table') }}

with source_data as (

     select * from {{ var('source_database') }}.S4HANA_BRONZE.KNA1

)

select 
KUNNR as id,
ORT01 as state,
STRAS as shipping_addr,
LAND1 as country,
TELF1 as contact_number,
NAME1 as contact_name
from source_data


