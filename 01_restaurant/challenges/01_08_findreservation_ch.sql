-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.


SELECT * FROM Reservations JOIN Customers ON
Reservations.CustomerID = Customers.CustomerID WHERE
Customers.Lastname Like 'St%' and Reservations.PartySize  = '4'
and Date >='2022-06-14'

-- O código seria melhor se a data abrangesse reservas anteriores também, uma vez que
-- o cliente pode ter perdido o prazo

SELECT * FROM Reservations JOIN Customers ON
Reservations.CustomerID = Customers.CustomerID WHERE
Customers.Lastname Like 'St%' and Reservations.PartySize  = '4'
ORDER BY Date DESC