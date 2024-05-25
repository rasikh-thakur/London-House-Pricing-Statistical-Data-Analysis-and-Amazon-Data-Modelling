INSERT INTO Customer (CustomerID, FirstName, LastName, Email, Phone, Address, RegistrationDate, LoyaltyPoints)
VALUES
(1, 'John', 'Doe', 'john.doe@email.com', '123-456-7890', '123 Main St', '2022-01-01', 100),
(2, 'Jane', 'Smith', 'jane.smith@email.com', '987-654-3210', '456 Oak St', '2022-01-02', 75),
(3, 'Bob', 'Johnson', 'bob.johnson@email.com', '555-123-4567', '789 Pine St', '2022-01-03', 50),
(4, 'Alice', 'Williams', 'alice.williams@email.com', '111-222-3333', '987 Cedar St', '2022-01-04', 120),
(5, 'Charlie', 'Brown', 'charlie.brown@email.com', '333-444-5555', '654 Walnut St', '2022-01-05', 80),
(6, 'Eva', 'Miller', 'eva.miller@email.com', '666-777-8888', '321 Birch St', '2022-01-06', 60),
(7, 'David', 'Davis', 'david.davis@email.com', '999-000-1111', '876 Pine St', '2022-01-07', 90),
(8, 'Grace', 'Anderson', 'grace.anderson@email.com', '444-555-6666', '543 Maple St', '2022-01-08', 110),
(9, 'Frank', 'Jones', 'frank.jones@email.com', '777-888-9999', '210 Oak St', '2022-01-09', 30),
(10, 'Helen', 'Smith', 'helen.smith@email.com', '222-333-4444', '789 Elm St', '2022-01-10', 70);

select * from Customer;

INSERT INTO OrderS (OrderID, OrderDate, ShippingAddress, PaymentMethod, OrderStatus, TotalAmount, TaxAmount, ShippingFee, CustomerID)
VALUES
(1, '2022-01-15', '123 Main St', 'Credit Card', 'Shipped', 150.00, 15.00, 10.00, 3),
(2, '2022-01-16', '456 Oak St', 'PayPal', 'Processing', 200.00, 20.00, 15.00, 7),
(3, '2022-01-17', '789 Pine St', 'Credit Card', 'Delivered', 100.00, 10.00, 8.00, 5),
(4, '2022-01-18', '987 Cedar St', 'Cash on Delivery', 'Shipped', 120.00, 12.00, 5.00, 1),
(5, '2022-01-19', '654 Walnut St', 'Credit Card', 'Processing', 180.00, 18.00, 12.00, 10),
(6, '2022-01-20', '321 Birch St', 'PayPal', 'Delivered', 90.00, 9.00, 7.00, 2),
(7, '2022-01-21', '876 Pine St', 'Credit Card', 'Shipped', 130.00, 13.00, 9.00, 6),
(8, '2022-01-22', '543 Maple St', 'Cash on Delivery', 'Processing', 160.00, 16.00, 11.00, 4),
(9, '2022-01-23', '210 Oak St', 'PayPal', 'Delivered', 110.00, 11.00, 6.00, 8),
(10, '2022-01-24', '789 Elm St', 'Credit Card', 'Shipped', 140.00, 14.00, 8.00, 9);

select * from Orders;

INSERT INTO Vendor (VendorID, VendorName, ContactName, ContactEmail, Phone, Address)
VALUES
(1, 'TechCo Electronics', 'John Smith', 'john.smith@techco.com', '111-222-3333', '123 Tech St'),
(2, 'Gadget World', 'Jane Johnson', 'jane.johnson@gadgetworld.com', '444-555-6666', '456 Gadget St'),
(3, 'Appliance Center', 'Bob Davis', 'bob.davis@appliances.com', '777-888-9999', '789 Appliance St'),
(4, 'Home Supplies', 'Alice White', 'alice.white@homesupplies.com', '222-333-4444', '987 Home St'),
(5, 'ElectroMart', 'Charlie Brown', 'charlie.brown@electromart.com', '555-666-7777', '654 Electro St'),
(6, 'Mobile Solutions', 'Eva Miller', 'eva.miller@mobilesolutions.com', '888-999-0000', '321 Mobile St'),
(7, 'Super Tech', 'David Anderson', 'david.anderson@supertech.com', '333-444-5555', '876 Tech St'),
(8, 'ABC Suppliers', 'Grace Smith', 'grace.smith@abcsuppliers.com', '666-777-8888', '543 ABC St'),
(9, 'Quick Appliances', 'Frank Jones', 'frank.jones@quickappliances.com', '999-000-1111', '210 Quick St'),
(10, 'Future Gadgets', 'Helen White', 'helen.white@futuregadgets.com', '123-456-7890', '789 Future St');

select * from Vendor;

INSERT INTO Product (ProductID, Weight, ProductName, StockQuantity, Description, Price, Dimension, VendorID)
VALUES
(1, 2.5, 'Laptop Pro', 50, 'High-performance laptop', 1200.00, '15x10x1', 3),
(2, 0.8, 'Smartphone X', 100, 'Latest smartphone model', 800.00, '6x3x0.5', 7),
(3, 1.2, 'Coffee Maker Deluxe', 30, 'Premium coffee maker', 150.00, '12x8x8', 5),
(4, 3.0, 'Ultra HD TV', 20, 'Large-screen Ultra HD television', 2000.00, '50x30x5', 1),
(5, 0.5, 'Bluetooth Earbuds', 80, 'Wireless Bluetooth earbuds', 50.00, '2x2x1', 10),
(6, 1.5, 'Home Security Camera', 40, 'Smart home security camera', 120.00, '5x5x3', 2),
(7, 4.0, 'Refrigerator Deluxe', 10, 'Large-capacity refrigerator', 800.00, '36x24x30', 6),
(8, 2.2, 'Gaming Console X', 25, 'Next-gen gaming console', 400.00, '12x8x4', 8),
(9, 0.3, 'Fitness Tracker Pro', 60, 'Advanced fitness tracker', 70.00, '2x1x0.5', 4),
(10, 1.0, 'Digital Camera', 15, 'High-resolution digital camera', 300.00, '4x3x2', 9);

select * from Product;

INSERT INTO Review (ReviewID, Rating, ReviewText, ReviewDate, CustomerID, ProductID)
VALUES
(1, 5, 'Great product!', '2022-01-10', 3, 1),
(2, 4, 'Fast shipping, good quality.', '2022-01-12', 7, 2),
(3, 3, 'Average product, but affordable.', '2022-01-15', 5, 3),
(4, 5, 'Excellent TV, very satisfied.', '2022-01-18', 1, 4),
(5, 2, 'Earbuds broke after a week.', '2022-01-20', 10, 5),
(6, 4, 'Impressive camera features.', '2022-01-22', 2, 6),
(7, 5, 'Keeps food fresh, highly recommend.', '2022-01-25', 6, 7),
(8, 3, 'Console performance is decent.', '2022-01-28', 8, 8),
(9, 4, 'Accurate fitness tracking, good buy.', '2022-01-30', 4, 9),
(10, 1, 'Camera quality disappoints.', '2022-02-02', 9, 10);

select * from Review;

INSERT INTO OrderItem (OrderItemID, Quantity, Subtotal, OrderID, ProductID)
VALUES
(1, 2, 2400.00, 1, 5),
(2, 3, 2400.00, 2, 8),
(3, 1, 150.00, 3, 3),
(4, 2, 4000.00, 4, 7),
(5, 5, 250.00, 5, 2),
(6, 1, 120.00, 6, 10),
(7, 2, 2600.00, 7, 1),
(8, 1, 400.00, 8, 9),
(9, 3, 210.00, 9, 6),
(10, 1, 300.00, 10, 4);

select * from OrderItem;