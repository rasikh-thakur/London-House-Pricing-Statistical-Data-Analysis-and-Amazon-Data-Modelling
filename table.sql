CREATE TABLE Customer
(
  LoyaltyPoints INT NOT NULL,
  CustomerID INT NOT NULL,
  FirstName VARCHAR(50) NOT NULL,
  RegistrationDate DATE NOT NULL,
  LastName VARCHAR(50) NOT NULL,
  Email VARCHAR(100) NOT NULL,
  Address VARCHAR(255) NOT NULL,
  Phone VARCHAR(20) NOT NULL,
  PRIMARY KEY (CustomerID)
);

CREATE TABLE Orders
(
  OrderDate DATE NOT NULL,
  OrderID INT NOT NULL,
  PaymentMethod VARCHAR(50) NOT NULL,
  ShippingFee DECIMAL(10, 2) NOT NULL, 
  ShippingAddress VARCHAR(255) NOT NULL,
  OrderStatus VARCHAR(50) NOT NULL,
  TotalAmount DECIMAL(10, 2) NOT NULL, 
  TaxAmount DECIMAL(10, 2) NOT NULL,  
  CustomerID INT NOT NULL,
  PRIMARY KEY (OrderID),
  FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

CREATE TABLE Vendor
(
  VendorName VARCHAR(100) NOT NULL,
  ContactName VARCHAR(50) NOT NULL,
  Address VARCHAR(255) NOT NULL,
  VendorID INT NOT NULL,
  Phone VARCHAR(20) NOT NULL,
  ContactEmail VARCHAR(100) NOT NULL,
  PRIMARY KEY (VendorID)
);

CREATE TABLE Product
(
  ProductID INT NOT NULL,
  Weight DECIMAL(10, 2) NOT NULL,
  ProductName VARCHAR(100) NOT NULL,
  StockQuantity INT NOT NULL,
  Description VARCHAR(500) NOT NULL,
  Price DECIMAL(10, 2) NOT NULL, 
  Dimension VARCHAR(50) NOT NULL,
  VendorID INT NOT NULL,
  PRIMARY KEY (ProductID),
  FOREIGN KEY (VendorID) REFERENCES Vendor(VendorID)
);

CREATE TABLE Review
(
  Rating INT NOT NULL,
  ReviewID INT NOT NULL,
  ReviewText VARCHAR(500) NOT NULL,
  ReviewDate DATE NOT NULL,
  CustomerID INT NOT NULL,
  ProductID INT NOT NULL,
  PRIMARY KEY (ReviewID),
  FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
  FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);

CREATE TABLE OrderItem
(
  OrderItemID INT NOT NULL,
  Quantity INT NOT NULL,
  Subtotal DECIMAL(10, 2) NOT NULL,
  OrderID INT NOT NULL,
  ProductID INT NOT NULL,
  PRIMARY KEY (OrderItemID),
  FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
  FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);