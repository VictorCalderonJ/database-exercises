USE ent_db;

SHOW TABLES;

CREATE TABLE suppliers
(
    id          INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name        VARCHAR(100) NOT NULL,
    established INT          NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE coffees
(
    id       INT UNSIGNED  NOT NULL AUTO_INCREMENT,
    name     VARCHAR(100)  NOT NULL,
    roast    VARCHAR(100)  NOT NULL,
    price    DECIMAL(5, 2) NOT NULL,
    supplier_id INT UNSIGNED  NOT NULL,
    PRIMARY KEY (id),
    # ITS A KEY WITHOUT IT'LL BE 'random numbers or letters'
    CONSTRAINT coffee_supplier_id_fk FOREIGN KEY (supplier_id) REFERENCES suppliers (id)
);

DESCRIBE coffees;
DESCRIBE suppliers;

INSERT INTO suppliers (name, established)
VALUES ('Bean There, Done That Distributors', 1988),
       ('Caffeine Cartel Connections', 2005);


INSERT INTO coffees (name, roast, price, supplier_id)
VALUES ('Hazelnutty Delight', 'medium', 5.99, 2),
       ('Choco-nut Nirvana', 'light', 4.49, 1),
       ('Berry Bonanza Brew', 'dark', 4.99, 1),
       ('Caramel Bliss-presso', 'espresso', 5.99, 1),
       ('Raspberry Rhapsody Roast', 'medium', 5.49, 2),
       ('S\'more Energy Latte', 'light', 4.99, 2);
# JOIN DB
SELECT c.name AS Coffee, s.name AS Supplier
FROM coffees AS c
JOIN suppliers s
ON c.supplier_id = s.id;

# INNER JOIN

# LEFT JOIN

# RIGHT JOIN
