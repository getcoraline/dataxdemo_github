with relation_columns as (

        
        select
            cast('ID' as string) as relation_column,
            cast('STRING' as string) as relation_column_type
        union all
        
        select
            cast('NAME' as string) as relation_column,
            cast('STRING' as string) as relation_column_type
        
        
    ),
    test_data as (

        select
            *
        from
            relation_columns
        where
            relation_column = 'ID'
            and
            relation_column_type not in ('STRING')

    )
    select *
    from test_data