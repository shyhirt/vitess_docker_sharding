USE commerce;

INSERT INTO products (product_id, name, price) VALUES
(1, 'Laptop', 999.99),
(2, 'Mouse', 29.99),
(3, 'Keyboard', 79.99),
(4, 'Monitor', 299.99),
(5, 'Headphones', 149.99);

USE customer;

INSERT INTO customers (customer_id, name, email) VALUES
 (1, 'Alice Johnson', 'alice@example.com'),
 (2, 'Bob Smith', 'bob@example.com'),
 (3, 'Charlie Brown', 'charlie@example.com'),
 (4, 'Diana Prince', 'diana@example.com'),
 (5, 'Eve Wilson', 'eve@example.com'),
 (100, 'Frank Miller', 'frank@example.com'),
 (200, 'Grace Lee', 'grace@example.com'),
 (300, 'Henry Davis', 'henry@example.com');

INSERT INTO orders (order_id, customer_id, product_id, quantity) VALUES
 (1, 1, 1, 1),
 (2, 1, 2, 2),
 (3, 2, 3, 1),
 (4, 3, 1, 1),
 (5, 4, 5, 2),
 (6, 100, 2, 3),
 (7, 200, 4, 1),
 (8, 300, 1, 1);