select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      -- ตรวจสอบว่าจำนวนประเภทผลิตภัณฑ์ที่ซื้อตรงกับจำนวนประเภทผลิตภัณฑ์ที่ไม่ซ้ำกัน
WITH customer_validation AS (
    SELECT
        product_types_purchased,
        unique_product_types_count
    FROM `catalog_develop`.`default`.`mart_jaffle_data__customer_360`
)
SELECT *
FROM customer_validation
WHERE unique_product_types_count != COALESCE(CARDINALITY(SPLIT(product_types_purchased, ',')), 0)
      
    ) dbt_internal_test