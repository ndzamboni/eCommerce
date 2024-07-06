-- DROP DATABASE if it exists
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;

-- Connect to the new database
\c ecommerce_db

-- CREATE TABLES

-- Categories Table
CREATE TABLE categories (
  id SERIAL PRIMARY KEY,
  category_name VARCHAR(255) NOT NULL
);

-- Products Table
CREATE TABLE products (
  id SERIAL PRIMARY KEY,
  product_name VARCHAR(255) NOT NULL,
  price DECIMAL NOT NULL,
  stock INTEGER DEFAULT 10,
  category_id INTEGER REFERENCES categories(id)
);

-- Tags Table
CREATE TABLE tags (
  id SERIAL PRIMARY KEY,
  tag_name VARCHAR(255)
);

-- ProductTags Table
CREATE TABLE product_tags (
  id SERIAL PRIMARY KEY,
  product_id INTEGER REFERENCES products(id),
  tag_id INTEGER REFERENCES tags(id)
);
