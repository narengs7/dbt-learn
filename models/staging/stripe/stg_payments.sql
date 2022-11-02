with payments as (
    select 
        orderid,
        amount
    from raw.stripe.payment
)

select * from payments