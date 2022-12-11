-- Prepare a report of the library patrons
-- who have checked out the fewest books.

SELECT COUNT(Loans.BookID) AS Qtd_Books, Patrons.FirstName, Patrons.Email
FROM Loans JOIN Patrons ON Loans.PatronID = Patrons.PatronID GROUP BY Patrons.PatronID
ORDER BY Qtd_Books ASC LIMIT 10;