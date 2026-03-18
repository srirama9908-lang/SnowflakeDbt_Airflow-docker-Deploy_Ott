{{
    config(
        materialized='table'
    )
}}

SELECT 
* 
from 
{{ref('staging')}}
