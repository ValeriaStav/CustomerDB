USE CustomerLib_Stavriadi
GO

--valid cases

INSERT INTO Customers (FirstName, LastName, CustomerPhoneNumber, CustomerEmail, TotalPurchaseAmount)
VALUES ('John', 'Doe', '1234567890', 'JohnD555@gmail.com', 10000);

INSERT INTO Customers (FirstName, LastName, CustomerPhoneNumber, CustomerEmail, TotalPurchaseAmount)
VALUES (NULL,'Black', NULL, NULL, NULL);

INSERT INTO Customers (LastName)
VALUES ('White');

INSERT INTO Addresses (CustomerId, AddressLine, AddressLine2, AddressType, City, PostalCode, [State], Country)
VALUES (1, 'First line', 'Second line', 'Shipping', 'Ottawa', '123456', 'Ontario', 'Canada')

INSERT INTO Notes(Note, CustomerId)
VALUES ('Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.', 1);



--invalid cases

iNSERT INTO Customers (FirstName, LastName, CustomerPhoneNumber, CustomerEmail, TotalPurchaseAmount)
VALUES ('John', NULL, '1234567890', 'JohnD555@gmail.com', 10000);

INSERT INTO Customers (FirstName)
VALUES ('Joeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee');

INSERT INTO Customers (LastName)
VALUES ('Blackkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk');

INSERT INTO Customers (LastName)
VALUES (NULL);

iNSERT INTO Customers (CustomerPhoneNumber)
VALUES ('123456789#0987654321');

iNSERT INTO Customers (CustomerEmail)
VALUES ('JohnD555#gmail,c');

INSERT INTO Addresses (CustomerId, AddressLine, AddressLine2, AddressType, City, PostalCode, [State], Country)
VALUES (3, 'First line', 'Second line', 'Chipping', 'Ottawa', '1234567', 'Ontarioooooooooooooooooooooooooo', 'Africa')
