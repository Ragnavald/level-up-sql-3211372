-- Create a table in the database to store customer
-- responses to our anniversary invitation.

-- Associate a customer's ID number with the number of people
-- they plan to bring in their party.

-- Hint: SQLite offers the INTEGER and REAL datatypes

CREATE TABLE CustomerParty(
CustomerID INTEGER,
number_peoples INTEGER
);

INSERT INTO CustomerParty VALUES('1','10');

SELECT * FROM CustomerParty