SELECT 
    stg.bar_code,
    stg.productname,
    stg.category,
    stg.productprice
    --metadata-v2--
from stg_nlp_product as stg
where 1=1
--timestamp-- and stg.mdmCounterForEntity > {{start_from}}
--tenantIds-- and mdmTenantId IN {{tenantIds}}
