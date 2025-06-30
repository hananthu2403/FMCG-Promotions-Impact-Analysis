SELECT 
    ds.store_id,
    ds.city,
    ROUND(SUM(fe.base_price * fe.`quantity_sold(after_promo)`) - SUM(fe.base_price * fe.`quantity_sold(before_promo)`), 2) AS incremental_revenue
FROM 
    fact_events fe
JOIN 
    dim_stores ds ON fe.store_id = ds.store_id
GROUP BY 
    ds.store_id, ds.city
ORDER BY 
    incremental_revenue DESC
LIMIT 10;

SELECT 
    ds.store_id,
    ds.city,
    SUM(fe.`quantity_sold(after_promo)`) - SUM(fe.`quantity_sold(before_promo)`) AS incremental_units_sold
FROM 
    fact_events fe
JOIN 
    dim_stores ds ON fe.store_id = ds.store_id
GROUP BY 
    ds.store_id, ds.city
ORDER BY 
    incremental_units_sold ASC
LIMIT 10;


SELECT 
    ds.city,
    ROUND(SUM(fe.base_price * fe.`quantity_sold(after_promo)`), 2) AS total_revenue_after_promo
FROM 
    fact_events fe
JOIN 
    dim_stores ds ON fe.store_id = ds.store_id
GROUP BY 
    ds.city
ORDER BY 
    total_revenue_after_promo DESC;
    
    
    
    
SELECT 
    promo_type,
    ROUND(SUM(base_price * `quantity_sold(after_promo)`) - SUM(base_price * `quantity_sold(before_promo)`), 2) AS incremental_revenue
FROM 
    fact_events
GROUP BY 
    promo_type
ORDER BY 
    incremental_revenue DESC
LIMIT 2;




SELECT 
    promo_type,
    SUM(`quantity_sold(after_promo)`) - SUM(`quantity_sold(before_promo)`) AS incremental_units_sold
FROM 
    fact_events
GROUP BY 
    promo_type
ORDER BY 
    incremental_units_sold ASC
LIMIT 2;


SELECT 
    promo_type,
    ROUND(SUM(base_price * `quantity_sold(before_promo)`), 2) AS revenue_before,
    ROUND(SUM(base_price * `quantity_sold(after_promo)`), 2) AS revenue_after,
    ROUND(SUM(base_price * `quantity_sold(after_promo)`) - SUM(base_price * `quantity_sold(before_promo)`), 2) AS incremental_revenue,
    SUM(`quantity_sold(after_promo)`) - SUM(`quantity_sold(before_promo)`) AS incremental_units_sold
FROM 
    fact_events
GROUP BY 
    promo_type;



SELECT 
    dp.category,
    SUM(`quantity_sold(after_promo)`) - SUM(`quantity_sold(before_promo)`) AS incremental_units_sold
FROM 
    fact_events fe
JOIN 
    dim_products dp ON fe.product_code = dp.product_code
GROUP BY 
    dp.category
ORDER BY 
    incremental_units_sold DESC;
    


SELECT 
    dp.product_name,
    dp.category,
    ROUND(SUM(base_price * `quantity_sold(after_promo)`) - SUM(base_price * `quantity_sold(before_promo)`), 2) AS incremental_revenue
FROM 
    fact_events fe
JOIN 
    dim_products dp ON fe.product_code = dp.product_code
GROUP BY 
    dp.product_name, dp.category
ORDER BY 
    incremental_revenue DESC
LIMIT 5;


SELECT 
    dp.product_name,
    dp.category,
    ROUND(SUM(base_price * `quantity_sold(after_promo)`) - SUM(base_price * `quantity_sold(before_promo)`), 2) AS incremental_revenue
FROM 
    fact_events fe
JOIN 
    dim_products dp ON fe.product_code = dp.product_code
GROUP BY 
    dp.product_name, dp.category
ORDER BY 
    incremental_revenue ASC
LIMIT 5;



SELECT 
    dp.category,
    fe.promo_type,
    ROUND(SUM(base_price * `quantity_sold(after_promo)`) - SUM(base_price * `quantity_sold(before_promo)`), 2) AS incremental_revenue,
    SUM(`quantity_sold(after_promo)`) - SUM(`quantity_sold(before_promo)`) AS incremental_units_sold
FROM 
    fact_events fe
JOIN 
    dim_products dp ON fe.product_code = dp.product_code
GROUP BY 
    dp.category, fe.promo_type
ORDER BY 
    dp.category, incremental_revenue DESC;
