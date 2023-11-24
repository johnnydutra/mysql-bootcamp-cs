SELECT first_name, last_name, order_date, amount FROM customers
LEFT JOIN orders ON orders.customer_id = customers.id;

SELECT order_date, amount, first_name, last_name FROM orders
LEFT JOIN customers ON customers.id = orders.customer_id;

SELECT first_name, last_name, Ifnull(Sum(amount), 0) AS sum_amount FROM customers
LEFT JOIN orders ON customers.id = orders.customer_id
GROUP BY first_name, last_name;