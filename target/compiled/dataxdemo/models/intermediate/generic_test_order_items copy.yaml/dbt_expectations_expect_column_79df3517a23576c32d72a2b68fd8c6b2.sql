





    with grouped_expression as (
    select
        
        
    
  
( 1=1 and length(
        product_name
    ) >= 1
)
 as expression


    from `catalog_develop`.`default`.`int_jaffle_data__order_items`
    

),
validation_errors as (

    select
        *
    from
        grouped_expression
    where
        not(expression = true)

)

select *
from validation_errors






