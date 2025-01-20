-- Table: Books
CREATE TABLE books (
    book_id INTEGER PRIMARY KEY,
    title VARCHAR,
    author_id INTEGER,
    category_id INTEGER,
    isbn VARCHAR(13) UNIQUE,
    publisher_id INTEGER,
    language_id INTEGER,
    FOREIGN KEY (author_id) REFERENCES authors(author_id),
    FOREIGN KEY (category_id) REFERENCES categories(category_id),
    FOREIGN KEY (publisher_id) REFERENCES publishers(publisher_id),
    FOREIGN KEY (language_id) REFERENCES languages(language_id)
);

-- Table: Authors
CREATE TABLE authors (
    author_id INTEGER PRIMARY KEY,
    first_name VARCHAR,
    last_name VARCHAR,
    birth_date DATE
);

-- Table: Categories
CREATE TABLE categories (
    category_id INTEGER PRIMARY KEY,
    category_name VARCHAR UNIQUE
);

-- Table: Languages
CREATE TABLE languages (
    language_id INTEGER PRIMARY KEY,
    language_name VARCHAR UNIQUE
);

-- Table: Publishers
CREATE TABLE publishers (
    publisher_id INTEGER PRIMARY KEY,
    name VARCHAR UNIQUE,
    country VARCHAR
);

-- Table: Members
CREATE TABLE members (
    member_id INTEGER PRIMARY KEY,
    first_name VARCHAR,
    last_name VARCHAR,
    email VARCHAR UNIQUE,
    phone VARCHAR(15) UNIQUE,
    join_date DATE
);

-- Table: Borrowing
CREATE TABLE borrowing (
    borrowing_id INTEGER PRIMARY KEY,
    member_id INTEGER,
    book_id INTEGER,
    borrow_date DATE,
    return_date DATE,
    FOREIGN KEY (member_id) REFERENCES members(member_id),
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);
