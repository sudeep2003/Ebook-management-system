-- Create Users Table
CREATE TABLE IF NOT EXISTS Users (
    userId INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    address VARCHAR(255),
    phoneNumber VARCHAR(20),
    landmark VARCHAR(255),
    city VARCHAR(100),
    state VARCHAR(100),
    zipCode VARCHAR(10)
);

-- Create Books Table
CREATE TABLE IF NOT EXISTS Books (
    bookId INT AUTO_INCREMENT PRIMARY KEY,
    bookName VARCHAR(255) NOT NULL,
    author VARCHAR(255),
    price DECIMAL(10, 2),
    bookCategory VARCHAR(100),
    status VARCHAR(50),
    photoName VARCHAR(255),
    email VARCHAR(255)
);

-- Create Cart Table
CREATE TABLE IF NOT EXISTS Cart (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cid INT,
    bid INT,
    uid INT,
    bookName VARCHAR(255),
    author VARCHAR(255),
    price DECIMAL(10, 2),
    totalPrice DECIMAL(10, 2),
    FOREIGN KEY (bid) REFERENCES Books(bookId),
    FOREIGN KEY (uid) REFERENCES Users(userId)
);

-- Create BookOrder Table
CREATE TABLE IF NOT EXISTS BookOrder (
    id INT AUTO_INCREMENT PRIMARY KEY,
    orderId VARCHAR(255) NOT NULL,
    userName VARCHAR(255),
    email VARCHAR(255),
    phoneNumber VARCHAR(20),
    fullAddress VARCHAR(255),
    paymentType VARCHAR(50),
    authorName VARCHAR(255),
    bookName VARCHAR(255),
    price DECIMAL(10, 2),
    orderTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- -- Load Sample Data into Books Table if sample_data.csv is available
-- LOAD DATA LOCAL INFILE '/docker-entrypoint-initdb.d/sample_data.csv'
-- INTO TABLE Books
-- FIELDS TERMINATED BY ',' ENCLOSED BY '"'
-- LINES TERMINATED BY '\n'
-- IGNORE 1 ROWS
-- (bookName, author, price, bookCategory, status, photoName, email);
