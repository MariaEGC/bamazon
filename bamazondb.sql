CREATE DATABASE bamazondb;

USE bamazondb;

CREATE TABLE products(
    id INT AUTO_INCREMENT NOT NULL,
    name VARCHAR(250) NOT NULL,
    department VARCHAR(250),
    price INT(10) NOT NULL,
    quantity INT(10),
    PRIMARY KEY (id)
);

INSERT INTO products(name, department, price, quantity)
VALUES("hat", "clothing", 15, 140),
      ("switch", "gaming", 300, 380),
      ("duck", "toy", 1, 491),
      ("paint brush", "art", 30, 117),
      ("ps4", "gaming", 250, 765),
      ("puzzle", "book", 20, 49),
      ("iphone wire", "electronic", 35, 1185),
      ("lipgloss", "makeup", 5, 540),
      ("iphone x", "electronic", 800, 905),
      ("zelda figure", "toy", 50, 141);

CREATE TABLE departments(
    id INT AUTO_INCREMENT NOT NULL,
    department VARCHAR(50) NOT NULL,
    over_head_costs DECIMAL(11,2) NOT NULL,
    total_product DECIMAL(11,2),
    PRIMARY KEY(id);
);

INSERT INTO departments(department, over_head_costs, total_product)
VALUES("clothing", 1000, 0),
      ("gaming", 1000, 0),
      ("toy", 1000, 0),
      ("art", 1000, 0),
      ("book", 1000, 0),
      ("electronic", 1000, 0),
      ("makeup", 1000, 0);

CREATE VIEW bamazon.product_sale
AS SELECT id, department, over_head_costs, total_product, total_product-over_head_costs
AS product_sale FROM departments;