create database StockMarket;

use StockMarket;

CREATE TABLE Companies_Data (
    Company_ID INT AUTO_INCREMENT PRIMARY KEY,
    Company VARCHAR(100) UNIQUE,
    Industry VARCHAR(100),
    Quote VARCHAR(50),
    Sector VARCHAR(100)
);
drop table companies_data;
select * from companies_data;


CREATE TABLE Company_Stock_Data (
    `Date` VARCHAR(10),
    `Open` DECIMAL(10,6),
    `High` DECIMAL(10,6),
    `Low` DECIMAL(10,6),
    `Close` DECIMAL(10,6),
    `Adj Close` DECIMAL(10,6),
    `Volume` INT,
    `Company_ID` INT,
    FOREIGN KEY (Company_ID) REFERENCES companies_data(Company_ID)
);

select * from Company_Stock_Data;
CREATE TABLE Companies_info (
    Company_ID INT AUTO_INCREMENT PRIMARY KEY,
    Company VARCHAR(100) UNIQUE,
    Industry VARCHAR(100),
    Quote VARCHAR(50),
    Sector VARCHAR(100)
);
select * from Companies_info;