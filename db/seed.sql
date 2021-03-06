CREATE TABLE Category (
id INT(10) NOT NULL AUTO_INCREMENT,
category_name VARCHAR(30) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE Product (
id INT(10) NOT NULL AUTO_INCREMENT,
product_name VARCHAR(30) NOT NULL,
price DECIMAL (10,4) NOT NULL,
stock INT(10) NOT NULL, 
category_id INT(10),
FOREIGN KEY (category_id) REFERENCES Category(id) ON DELETE CASCADE,
PRIMARY KEY (id)
);

CREATE TABLE Tag (
id INT NOT NULL AUTO_INCREMENT,
tag_name VARCHAR(30),
PRIMARY KEY (id)
);

CREATE TABLE ProductTag (
id INT NOT NULL AUTO_INCREMENT,
product_id INT(10),
FOREIGN KEY (product_id) REFERENCES Product(id),
tag_id INT(10),
FOREIGN KEY (tag_id) REFERENCES Tag(id),
PRIMARY KEY (id)
)