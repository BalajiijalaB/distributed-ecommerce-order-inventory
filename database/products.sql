-- Create products table

CREATE TABLE products (
    product_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    price NUMERIC(10,2) NOT NULL CHECK (price > 0),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert sample products

INSERT INTO products (name, price)
VALUES
    ('Laptop', 60000),
    ('Mouse', 950),
    ('Keyboard', 1500);

-- Retrieve all products

SELECT * FROM products;

-- Retrieve products above 1000

SELECT * FROM products
WHERE price > 1000;

-- Sort products from cheapest to most expensive

SELECT * FROM products
ORDER BY price ASC;