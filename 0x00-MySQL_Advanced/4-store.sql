-- Initial setup
DROP TABLE IF EXISTS orders;  -- Drop orders table first
DROP TABLE IF EXISTS items;    -- Then drop items table

CREATE TABLE IF NOT EXISTS items (
    name VARCHAR(255) NOT NULL,
    quantity INT NOT NULL DEFAULT 10,
    PRIMARY KEY (name)  -- Added primary key for better integrity
);

CREATE TABLE IF NOT EXISTS orders (
    item_name VARCHAR(255) NOT NULL,
    number INT NOT NULL,
    FOREIGN KEY (item_name) REFERENCES items(name)  -- Ensure referential integrity
);

INSERT INTO items (name) VALUES ("apple"), ("pineapple"), ("pear");
