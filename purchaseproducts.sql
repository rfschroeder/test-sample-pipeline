select
    stg.*,
    stg_p.*
    --metadata-v2--
from
    stg_nlp_purchaseorder stg
join UNNEST(stg.products) as product
join {{tableName_product}} stg_p on
    (product.bar_code = stg_p.bar_code)
--timestamp-- and stg.mdmCounterForEntity > {{start_from}}
--tenantIds-- and mdmTenantId IN {{tenantIds}}
