select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      with relation_columns as (

        
        select
            cast('SKU' as string) as relation_column,
            cast('STRING' as string) as relation_column_type
        union all
        
        select
            cast('NAME' as string) as relation_column,
            cast('STRING' as string) as relation_column_type
        union all
        
        select
            cast('TYPE' as string) as relation_column,
            cast('STRING' as string) as relation_column_type
        union all
        
        select
            cast('PRICE' as string) as relation_column,
            cast('BIGINT' as string) as relation_column_type
        union all
        
        select
            cast('DESCRIPTION' as string) as relation_column,
            cast('STRING' as string) as relation_column_type
        
        
    ),
    test_data as (

        select
            *
        from
            relation_columns
        where
            relation_column = 'TYPE'
            and
            relation_column_type not in ('STRING')

    )
    select *
    from test_data
      
    ) dbt_internal_test