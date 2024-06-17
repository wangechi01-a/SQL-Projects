CREATE Database Warehouse;

CREATE TABLE Product (
ProductID INT PRIMARY KEY,
ProductName VARCHAR(50),
UnitPrice INT(10)
);

ALTER TABLE Product
MODIFY Column UnitPrice INT;

CREATE TABLE Employee (
EmployeeID INT PRIMARY KEY,
EmployeeName VARCHAR(50),
Department VARCHAR(20),
ProductID INT, 
FOREIGN KEY (ProductID) References Product(ProductID)
);

INSERT INTO Product (ProductID, ProductName, UnitPrice)
VALUES(1,'Cocoa_butter', 640), ( 2 , 'Nivea_cool' , 560), ( 3, 'Aloa_vera', 540);

SELECT * FROM Product;

INSERT INTO Product (ProductID, ProductName, UnitPrice)
VALUES(5, 'Nourishing', 570);


ALTER TABLE Employee
MODIFY Column EmployeeID INT AUTO_INCREMENT;


INSERT INTO Employee (EmployeeName, Department, ProductID)
VALUES('Festus', 'Production_operation', 1), ('Victor', 'Finance', 2), ('Samoei', 'Ict',3),('Maureen', 'Human_resource', 4), ('Wangechi', 'Human_resource', 4);

-- DELETE FROM Employee;

SELECT * FROM Employee;

SELECT Department, COUNT(EmployeeID) AS Number_of_employee
FROM Employee
GROUP BY Department;

SELECT Product.ProductID, Employee.EmployeeName
FROM Product
INNER JOIN Employee on Product.ProductID = Employee.ProductID;

SELECT Product.ProductID, Product.ProductName, Product.UnitPrice, Employee.EmployeeName
FROM Product
CROSS JOIN Employee;



