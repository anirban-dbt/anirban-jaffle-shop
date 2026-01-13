with

source as (

    select * from {{ source('ecom', 'raw_customers') }}
<<<<<<< HEAD
    -- I'm adding these lines to create
    -- a merge conflict in dbt Studio
=======
>>>>>>> fc7f0354f1eb6fa14d784d29df7675542f0d14b0

),

renamed as (

    select

        ----------  ids
        id as customer_id,

        ---------- text
        name as customer_name

    from source

)

select * from renamed
