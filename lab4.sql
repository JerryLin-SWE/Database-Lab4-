--Lab4 
--Jerry Lin

--Q1

SELECT COUNT(*) AS ORDER_COUNT,
       SUM(tax_amount) AS TAX_TOTAL
FROM orders_mgs;


--Q2

SELECT c.category_name AS CATEGORY_NAME,
       COUNT(*) AS PRODUCT_COUNT,
       MAX(p.list_price) AS MOST_EXPENSIVE_PRODUCT
FROM categories_mgs c
JOIN products_mgs p
    ON (c.category_id = p.category_id)
GROUP BY c.category_name
ORDER BY COUNT(*) DESC;

