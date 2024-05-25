-- Retrieve products and their average rating from reviews
SELECT 
    Product.ProductName,
    AVG(Review.Rating) AS AverageRating
FROM Product
LEFT JOIN Review ON Product.ProductID = Review.ProductID
GROUP BY Product.ProductName;


-- Find customers with the highest loyalty points
SELECT TOP 3
    CustomerID,
    FirstName,
    LastName,
    LoyaltyPoints
FROM Customer
ORDER BY LoyaltyPoints DESC;

-- Identify best-selling products
SELECT TOP 5
    Product.ProductID,
    Product.ProductName,
    SUM(OrderItem.Quantity) AS TotalQuantitySold
FROM Product
JOIN OrderItem ON Product.ProductID = OrderItem.ProductID
GROUP BY Product.ProductID, Product.ProductName
ORDER BY TotalQuantitySold DESC; 


-- Calculate revenue by vendor
SELECT 
    Vendor.VendorID,
    Vendor.VendorName,
    SUM(OrderItem.Subtotal) AS TotalRevenue
FROM Vendor
JOIN Product ON Vendor.VendorID = Product.VendorID
JOIN OrderItem ON Product.ProductID = OrderItem.ProductID
GROUP BY Vendor.VendorID, Vendor.VendorName
ORDER BY TotalRevenue DESC;

-- Retrieve customer reviews for a specific product
SELECT 
    Review.ReviewID,
    Review.Rating,
    Review.ReviewText,
    Review.ReviewDate,
    Customer.FirstName,
    Customer.LastName,
    Product.ProductName
FROM Review
JOIN Customer ON Review.CustomerID = Customer.CustomerID
JOIN Product ON Review.ProductID = Product.ProductID
WHERE Product.ProductName = 'Smartphone X';
