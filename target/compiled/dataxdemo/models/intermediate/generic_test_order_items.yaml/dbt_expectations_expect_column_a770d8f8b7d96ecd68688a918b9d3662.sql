






    with grouped_expression as (
    select
        
        
    
  
( 1=1 and ordered_at >= '2016-09-01' and ordered_at <= current_timestamp()
)
 as expression


    from `catalog_main`.`default`.`int_jaffle_data__order_items`
    

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







