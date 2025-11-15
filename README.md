### Test data 
```-- Commerce keyspace
USE commerce;
SHOW TABLES;

INSERT INTO products (product_id, name, price) VALUES
(1, 'Laptop', 999.99),
(2, 'Mouse', 29.99),
(3, 'Keyboard', 79.99),
(4, 'Monitor', 299.99),
(5, 'Headphones', 149.99);

SELECT * FROM products;

-- Customer keyspace (шардированный)
USE customer;
SHOW TABLES;

INSERT INTO customers (customer_id, name, email) VALUES
(1, 'Alice Johnson', 'alice@example.com'),
(2, 'Bob Smith', 'bob@example.com'),
(3, 'Charlie Brown', 'charlie@example.com'),
(100, 'Diana Prince', 'diana@example.com'),
(200, 'Eve Wilson', 'eve@example.com'),
(300, 'Frank Miller', 'frank@example.com');

INSERT INTO orders (order_id, customer_id, product_id, quantity) VALUES
(1, 1, 1, 1),
(2, 1, 2, 2),
(3, 2, 3, 1),
(4, 3, 1, 1),
(5, 100, 5, 2),
(6, 200, 2, 3),
(7, 300, 4, 1);

-- Проверьте данные
SELECT * FROM customers ORDER BY customer_id;
SELECT * FROM orders ORDER BY order_id;

-- Проверьте как данные распределены по шардам
SELECT customer_id, name, 
       CASE 
         WHEN customer_id IN (1,2,3) THEN 'shard -80'
         ELSE 'shard 80-'
       END as shard
FROM customers 
ORDER BY customer_id;

-- JOIN между таблицами
SELECT c.name, o.order_id, o.product_id, o.quantity 
FROM customers c 
JOIN orders o ON c.customer_id = o.customer_id
ORDER BY c.customer_id;```
