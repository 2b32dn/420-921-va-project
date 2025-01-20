-- Table: Books
CREATE TABLE books (
    book_id SERIAL PRIMARY KEY,
    title VARCHAR NOT NULL,
    author_id SERIAL NOT NULL,
    isbn VARCHAR(13) UNIQUE NOT NULL,
    publisher_id SERIAL NOT NULL,
    language_id SERIAL NOT NULL
);

-- Table: Authors
CREATE TABLE authors (
    author_id SERIAL PRIMARY KEY,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    birth_date DATE
);

-- Table: Categories
CREATE TABLE categories (
    category_id SERIAL PRIMARY KEY,
    category_name VARCHAR UNIQUE NOT NULL
);

-- Table: Languages
CREATE TABLE languages (
    language_id SERIAL PRIMARY KEY,
    language_name VARCHAR UNIQUE NOT NULL
);

-- Table: Publishers
CREATE TABLE publishers (
    publisher_id SERIAL PRIMARY KEY,
    name VARCHAR UNIQUE NOT NULL,
    country VARCHAR
);

-- Table: Members
CREATE TABLE members (
    member_id SERIAL PRIMARY KEY,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    email VARCHAR UNIQUE NOT NULL,
    phone VARCHAR(15) UNIQUE,
    join_date DATE DEFAULT (now())
);

-- Table: Borrowing
CREATE TABLE borrowing (
    borrowing_id SERIAL PRIMARY KEY,
    member_id SERIAL NOT NULL,
    book_id SERIAL NOT NULL,
    borrow_date DATE DEFAULT (now()),
    return_date DATE NOT NULL NOT NULL CHECK(return_date > borrow_date)
);

-- Table: BookCategories
CREATE TABLE bookCategories (
  book_id SERIAL,
  category_id SERIAL,
  PRIMARY KEY (book_id, category_id)
);

ALTER TABLE books ADD FOREIGN KEY (author_id) REFERENCES authors (author_id);

ALTER TABLE books ADD FOREIGN KEY (publisher_id) REFERENCES publishers (publisher_id);

ALTER TABLE books ADD FOREIGN KEY (language_id) REFERENCES languages (language_id);

ALTER TABLE bookCategories ADD FOREIGN KEY (book_id) REFERENCES books (book_id);

ALTER TABLE bookCategories ADD FOREIGN KEY (category_id) REFERENCES categories (category_id);

ALTER TABLE borrowing ADD FOREIGN KEY (member_id) REFERENCES members (member_id);

ALTER TABLE borrowing ADD FOREIGN KEY (book_id) REFERENCES books (book_id);



