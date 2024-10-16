-- Show initial items and orders
SELECT * FROM items;
SELECT * FROM orders;

-- Insert new orders
INSERT INTO orders (item_name, number) VALUES ('apple', 1);
INSERT INTO orders (item_name, number) VALUES ('apple', 3);
INSERT INTO orders (item_name, number) VALUES ('pear', 2);

-- Show updated items and orders
SELECT "--";
SELECT * FROM items;
SELECT * FROM orders;
