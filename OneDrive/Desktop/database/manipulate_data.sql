

UPDATE Books
SET price = price + 5
WHERE title = 'The Silent Patient';

UPDATE Books
SET stock_quantity = 25
WHERE title = 'Atomic Habits';


DELETE FROM Customers
WHERE email = 'john.doe@example.com';

DELETE FROM Orders
WHERE order_id = 3;


SELECT * FROM Books
WHERE genre = 'Fiction';

SELECT * FROM Orders
WHERE total_amount > 50;

SELECT * FROM Customers
WHERE last_name LIKE '%son%';

