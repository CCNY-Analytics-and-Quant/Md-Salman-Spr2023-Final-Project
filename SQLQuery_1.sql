SELECT 
    od.order_details_id,
    po.order_id,
    pp.pizza_id,
    pp.pizza_type_id,
    pp.size,
    pp.price,
    pt.name,
    pt.category,
    pt.ingredients,
    po.date,
    po.time
    quantity
FROM 
    pizza_order_details od
    JOIN pizza_orders po ON od.order_id = po.order_id
    JOIN pizza_prices pp ON od.pizza_id = pp.pizza_id
    JOIN pizza_types pt ON pp.pizza_type_id = pt.pizza_type_id