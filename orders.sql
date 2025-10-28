-- Customers table
CREATE TABLE customers (
    cust_id SERIAL PRIMARY KEY,
    cust_name VARCHAR(100) NOT NULL
);

INSERT INTO customers (cust_name)
VALUES 
    ('Raju'), ('Sham'), ('Paul'), ('Alex'),
    ('Raju'), ('Sham'), ('Paul'), ('Alex');

-- Products table
CREATE TABLE products (
    p_id SERIAL PRIMARY KEY,
    p_name VARCHAR(100) NOT NULL,
    price NUMERIC NOT NULL
);

INSERT INTO products (p_name, price)
VALUES 
    ('Laptop', 55000.00),
    ('Mouse', 500),
    ('Keyboard', 800.00),
    ('Cable', 250.00);

-- Orders table
CREATE TABLE orders (
    ord_id SERIAL PRIMARY KEY,
    ord_date DATE NOT NULL,
    cust_id INTEGER NOT NULL,
    FOREIGN KEY (cust_id) REFERENCES customers(cust_id)
);

INSERT INTO orders (ord_date, cust_id)
VALUES 
    ('2024-01-01', 1),
    ('2024-02-01', 2),
    ('2024-03-01', 3),
    ('2024-04-04', 2),
    ('2024-01-01', 1),
    ('2024-02-01', 2),
    ('2024-03-01', 3),
    ('2024-04-04', 2);

-- Order Items table
CREATE TABLE order_items (
    item_id SERIAL PRIMARY KEY,
    ord_id INTEGER NOT NULL,
    p_id INTEGER NOT NULL,
    quantity INTEGER NOT NULL,
    FOREIGN KEY (ord_id) REFERENCES orders(ord_id),
    FOREIGN KEY (p_id) REFERENCES products(p_id)
);

INSERT INTO order_items (ord_id, p_id, quantity)
VALUES 
    (1, 1, 1),
    (1, 4, 2),
    (2, 1, 1),
    (3, 2, 1),
    (3, 4, 5),
    (4, 3, 1);




