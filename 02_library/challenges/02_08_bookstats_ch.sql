-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.

-- Report 2: Show the five books that have been
-- checked out the most.


SELECT COUNT(Title) AS CT, Published FROM Books 
GROUP BY Published ORDER BY CT;

SELECT COUNT(Loans.LoanID) AS Dloan, Books.Title FROM Books JOIN
Loans ON Books.BookID = Loans.BookID GROUP BY Books.Title ORDER BY Dloan DESC LIMIT 5; 
