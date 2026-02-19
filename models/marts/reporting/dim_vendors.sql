with trips as (
    select * from {{ ref('fct_trips') }}
),

vendors as (
    select distinct
        vendorid,
        {{ get_vendor_data('vendorid') }} as vendor_name
    from trips
)

select * from vendors