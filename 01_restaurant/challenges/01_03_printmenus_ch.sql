-- Create reports that will be used to make three menus.

-- Create a report with all the items sorted by price (lowest to highest).
-- Create a report showing appetizers and beverages.
-- Create a report with all items except beverages.

SELECT Type, Name, Description, Price FROM Dishes ORDER BY Price;
SELECT Type, Name, Description, Price FROM Dishes WHERE Type='Appetizer' or Type='Beverage' ORDER BY Type;
SELECT Type, Name, Description, Price FROM Dishes WHERE NOT Type='Beverage' ORDER BY Type;