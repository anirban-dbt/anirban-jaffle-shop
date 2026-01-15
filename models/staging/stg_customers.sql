with

source as (

    select * from {{ source('ecom', 'raw_customers') }}
    -- I'm adding these lines to create
    -- a merge conflict in dbt Studio

),

renamed as (

    select

        ----------  ids
        id as customer_id,

        ---------- text
        name as customer_name

        ---------- ci job test comment

    from source

)

select * from renamed
