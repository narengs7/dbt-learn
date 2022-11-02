with orders as (
    select * from {{ ref('stg_orders') }}
),

payments as (
    select * from {{ ref('stg_payments') }}
),

final_table as (
    select 
        o.order_id as order_id,
        o.customer_id as customer_id,
        p.amount as amount
    from orders o inner join payments  p on o.order_id = p.orderid
)

select * from final_table