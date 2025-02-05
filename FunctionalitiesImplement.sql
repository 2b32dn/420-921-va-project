-- DDL
ALTER TABLE bookCategories
ALTER COLUMN book_id TYPE integer;

ALTER TABLE bookCategories
ALTER COLUMN category_id TYPE integer;

ALTER TABLE borrowing
ALTER COLUMN member_id TYPE integer;

ALTER TABLE borrowing
ALTER COLUMN book_id TYPE integer;

ALTER TABLE members
ALTER COLUMN phone DROP NOT NULL;



-- 1. Create
-- Add a new book
INSERT INTO books (book_id,title,author_id,isbn,publisher_id,language_id) 
VALUES ('19','To Kill a Mockingbird','1','9780061120084','1','3');

INSERT INTO bookCategories (book_id,category_id) VALUES ('19','7');
INSERT INTO bookCategories (book_id,category_id) VALUES ('19','3');
INSERT INTO bookCategories (book_id,category_id) VALUES ('19','8');

-- 2. Update
-- Update the name of a category
UPDATE categories
SET category_name = "Science & Technology"
WHERE category_id = 22;

-- 3.Delete
-- Delete a book
DELETE FROM bookCategories
WHERE book_id = 19;

DELETE FROM books
WHERE book_id = 19;

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