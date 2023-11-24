SELECT 
    first_name,
    last_name,
    order_date,
    amount
FROM
    customers
        JOIN
    orders ON orders.customer_id = customers.id;
    
SELECT
	*
FROM
	orders
		JOIN
	customers ON customers.id = orders.customer_id;
    
SELECT
	first_name,
    last_name,
    Sum(amount) as 'total'
FROM
	customers
		JOIN
    orders ON orders.customer_id = customers.id
GROUP BY customers.first_name, customers.last_name
ORDER BY total DESC;