-- 0-uniq_users.sql
-- Creates a table 'users' with unique user entries.
-- The table includes 'id' as the primary key, 'email' as a unique column, and 'name'.
-- If the table already exists, it is dropped to recreate it.

DROP TABLE IF EXISTS users;

CREATE TABLE IF NOT EXISTS users (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    name VARCHAR(255)
);
