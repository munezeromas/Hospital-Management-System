
INSERT INTO Books (title, author, genre, price, stock_quantity) VALUES
('The Silent Patient', 'Alex Michaelides', 'Fiction', 20.00, 10),
('Atomic Habits', 'James Clear', 'Self-help', 18.00, 15),
('Becoming', 'Michelle Obama', 'Biography', 22.50, 8),
('1984', 'George Orwell', 'Fiction', 15.75, 12),
('Clean Code', 'Robert C. Martin', 'Programming', 30.00, 5);


INSERT INTO Customers (first_name, last_name, email, phone) VALUES
('John', 'Doe', 'john.doe@example.com', '0798434106'),
('Jane', 'Smith', 'jane.smith@example.com', '079846574'),
('Alice', 'Johnson', 'alice.j@example.com', '0798465848'),
('Bob', 'Anderson', 'bob.anderson@example.com', '0798465883'),
('Emily', 'Watson', 'emily.watson@example.com', '0793737483');

INSERT INTO Orders (customer_id, total_amount) VALUES
(1, 40.00),
(2, 55.50),
(3, 60.00),
(4, 45.75),
(5, 30.00);