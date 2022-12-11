-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.

INSERT INTO Orders(CustomerID, OrderDate) 
VALUES((SELECT CustomerID FROM Customers
WHERE FirstName = 'Loretta' AND Lastname = 'Hundey'), '2022-09-20 14:00');

INSERT INTO OrdersDishes(OrderID, DishID)
VALUES((SELECT OrderID FROM Orders
WHERE CustomerID = (SELECT CustomerID FROM Customers WHERE FirstName = 'Loretta' AND Lastname = 'Hundey') ORDER BY OrderID DESC LIMIT 1),(SELECT DishID FROM Dishes WHERE Name = 'House Salad'))

INSERT INTO OrdersDishes(OrderID, DishID)
VALUES((SELECT OrderID FROM Orders
WHERE CustomerID = (SELECT CustomerID FROM Customers WHERE FirstName = 'Loretta' AND Lastname = 'Hundey') ORDER BY OrderID DESC LIMIT 1),(SELECT DishID FROM Dishes WHERE Name = 'Mini Cheeseburgers'));

INSERT INTO OrdersDishes(OrderID, DishID)
VALUES((SELECT OrderID FROM Orders
WHERE CustomerID = (SELECT CustomerID FROM Customers WHERE FirstName = 'Loretta' AND Lastname = 'Hundey') ORDER BY OrderID DESC LIMIT 1),(SELECT DishID FROM Dishes WHERE Name = 'Tropical Blue Smoothie'));


SELECT SUM(Dishes.Price) FROM Dishes INNER JOIN OrdersDishes
ON Dishes.DishID = OrdersDishes.DishID INNER JOIN Orders 
ON OrdersDishes.OrderID = Orders.OrderID WHERE Orders.OrderDate = '2022-09-20 14:00';
