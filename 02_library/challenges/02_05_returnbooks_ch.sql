-- Return three books to the library using
-- their bar codes.
-- Return date: July 5, 2022
-- Book 1: 6435968624
-- Book 2: 5677520613
-- Book 3: 8730298424

UPDATE Loans
SET ReturnedDate = '2022-07-05'
WHERE BookID = (SELECT BookID FROM Books WHERE Barcode = '6435968624');
AND ReturnedDate IS NULL;

UPDATE Loans
SET ReturnedDate = '2022-07-05'
WHERE  BookID = (SELECT BookID FROM Books WHERE Barcode = '5677520613');

UPDATE Loans
SET ReturnedDate = '2022-07-05'
WHERE  BookID = (SELECT BookID FROM Books WHERE Barcode = '8730298424');

SELECT Loans.ReturnedDate, Books.Title, Books.Barcode FROM Loans
JOIN Books ON Loans.BookID = Books.BookID WHERE Loans.ReturnedDate = '2022-07-05' GROUP BY Books.Barcode ORDER BY Books.Barcode DESC LIMIT 3;