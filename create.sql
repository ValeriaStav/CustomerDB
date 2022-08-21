CREATE DATABASE CustomerLib_Stavriadi

USE CustomerLib_Stavriadi
GO

CREATE TABLE Customers
(
CustomerId INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
FirstName NVARCHAR(50),
LastName NVARCHAR(50) NOT NULL,
CustomerPhoneNumber NVARCHAR(15) CHECK(LEN(CustomerPhoneNumber) <= 15 AND CustomerPhoneNumber NOT LIKE '%[^0-9]%'),
CustomerEmail NVARCHAR(50) CHECK(CustomerEmail LIKE '%_@__%.__%'),
TotalPurchaseAmount MONEY
);

GO

CREATE TABLE Addresses (
AddressId INT IDENTITY NOT NULL PRIMARY KEY,
CustomerId INT NOT NULL FOREIGN KEY REFERENCES Customers(CustomerId),
AddressLine NVARCHAR(100) NOT NULL,
AddressLine2 NVARCHAR(100),
AddressType NVARCHAR(8) NOT NULL CHECK(AddressType IN ('Shipping', 'Billing')),
City NVARCHAR(50) NOT NULL,
PostalCode NVARCHAR(6) NOT NULL,
[State] NVARCHAR(20) NOT NULL,
Country NVARCHAR(30) NOT NULL CHECK(Country IN ('USA', 'Canada'))
);

GO

CREATE TABLE Notes (
NoteId INT IDENTITY NOT NULL PRIMARY KEY,
CustomerId INT NOT NULL FOREIGN KEY REFERENCES Customers (CustomerId) ON DELETE CASCADE ON UPDATE CASCADE,
Note NVARCHAR(255) NOT NULL
);