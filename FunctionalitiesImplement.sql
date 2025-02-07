-- DDL
ALTER TABLE book_categories
ALTER COLUMN book_id TYPE integer;

ALTER TABLE book_categories
ALTER COLUMN category_id TYPE integer;

ALTER TABLE borrowing
ALTER COLUMN member_id TYPE integer;

ALTER TABLE borrowing
ALTER COLUMN book_id TYPE integer;

ALTER TABLE members
ALTER COLUMN phone DROP NOT NULL;

ALTER TABLE languages 
ALTER COLUMN language_name TYPE VARCHAR(20);

ALTER TABLE members
ALTER COLUMN email TYPE VARCHAR(50);

ALTER TABLE members
ALTER COLUMN phone TYPE VARCHAR(40);


-- 1. Create
-- Add a new book
INSERT INTO books (book_id,title,author_id,isbn,publisher_id,language_id) 
VALUES ('19','To Kill a Mockingbird','1','9780061120084','1','3');

INSERT INTO book_categories (book_id,category_id) VALUES ('19','7');
INSERT INTO book_categories (book_id,category_id) VALUES ('19','3');
INSERT INTO book_categories (book_id,category_id) VALUES ('19','8');

-- Register a new member
INSERT INTO members(first_name, last_name, email, phone)
VALUES
('John', 'Doe','johndoe@email.com','1-888-168-2888');

-- 2. Update
-- Update the name of a category
UPDATE categories
SET category_name = "Science & Technology"
WHERE category_id = 22;

-- Update member contact information
UPDATE members
SET email = "johndoe@hotmail.com"
WHERE phone = '1-888-168-2888';

-- Update borrowing return date
UPDATE borrowing
SET return_date = NOW() + INTERVAL '10 days';

-- 3.Delete
-- Delete a book
DELETE FROM book_categories
WHERE book_id = 19;

DELETE FROM books
WHERE book_id = 19;

-- Delete a Category
DELETE FROM categories
WHERE category_id = 7;

-- 4. Select
-- Find the most popular author based on book borrowings
SELECT a.author_id, a.first_name, a.last_name, COUNT(b.borrowing_id) AS borrow_count
FROM borrowing b
JOIN books bk ON b.book_id = bk.book_id
JOIN authors a ON bk.author_id = a.author_id
GROUP BY a.author_id, a.first_name, a.last_name
ORDER BY borrow_count DESC
LIMIT 1;

-- List all members with no borrowing history
SELECT m.member_id, m.first_name, m.last_name
FROM members m
LEFT JOIN borrowing b ON m.member_id = b.member_id
WHERE b.borrowing_id IS NULL;

-- Find the least borrowed books
SELECT bk.book_id, bk.title, COUNT(b.borrowing_id) AS borrow_count
FROM books bk
LEFT JOIN borrowing b ON bk.book_id = b.book_id
GROUP BY bk.book_id, bk.title
ORDER BY borrow_count ASC
LIMIT 1;

-- Generate a list of members who borrowed books from specific categories
SELECT CONCAT(m.first_name, ' ', m.last_name) as full_name 
FROM members m
JOIN borrowing b on m.member_id = b.member_id
JOIN book_categories bc on b.book_id = bc.book_id
JOIN categories c on bc.category_id = c.category_id
WHERE c.category_name = 'Fiction';

-- Calculate the total number of books per language
SELECT bk.title, count(l.language_name) AS total_of_languages_per_book 
FROM books bk
JOIN languages l ON bk.language_id = l.language_id
GROUP BY bk.title;