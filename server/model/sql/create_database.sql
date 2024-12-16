CREATE TABLE Client (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    phoneNumber VARCHAR(20),
    id_asignedEmployee INT,
    password VARCHAR(255) NOT NULL,
    FOREIGN KEY (id_asignedEmployee) REFERENCES Employee(code)
);

CREATE TABLE Order (
    code INT AUTO_INCREMENT PRIMARY KEY,
    date DATETIME DEFAULT CURRENT_TIMESTAMP,
    delivered BOOLEAN DEFAULT FALSE,
    idClient INT,
    codeEmployee INT,
    FOREIGN KEY (idClient) REFERENCES Client(ID),
    FOREIGN KEY (codeEmployee) REFERENCES Employee(code)
);

CREATE TABLE Product (
    code INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL,
    UrlImage VARCHAR(255)
);

CREATE TABLE Employee (
    code INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE ProductOrder (
    codeProduct INT,
    codeOrder INT,
    PRIMARY KEY (codeProduct, codeOrder),
    FOREIGN KEY (codeProduct) REFERENCES Product(code),
    FOREIGN KEY (codeOrder) REFERENCES `Order`(code)
);

