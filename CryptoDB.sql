CREATE DATABASE IF NOT EXISTS CryptoDB;

USE CryptoDB;

-- Tokens Table
CREATE TABLE tokens (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    symbol VARCHAR(10),
    decimals INT,
    contract VARCHAR(255) UNIQUE
);

-- Pairs Table
CREATE TABLE pairs (
    id INT PRIMARY KEY AUTO_INCREMENT,
    contract VARCHAR(255) UNIQUE,
    token0_id INT,
    token1_id INT,
    abi TEXT,
    FOREIGN KEY (token0_id) REFERENCES tokens(id),
    FOREIGN KEY (token1_id) REFERENCES tokens(id)
);

-- Prices Table
CREATE TABLE prices (
    id INT PRIMARY KEY AUTO_INCREMENT,
    pair_id INT,
    price DECIMAL(20,10),
    timestamp TIMESTAMP, 
    FOREIGN KEY (pair_id) REFERENCES pairs(id)
);