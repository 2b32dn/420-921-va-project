-- categories
INSERT INTO categories (category_id,category_name) VALUES ('1','Adventure');
INSERT INTO categories (category_id,category_name) VALUES ('2','Biography');
INSERT INTO categories (category_id,category_name) VALUES ('3','Classic');
INSERT INTO categories (category_id,category_name) VALUES ('4','Dystopian');
INSERT INTO categories (category_id,category_name) VALUES ('5','Epic');
INSERT INTO categories (category_id,category_name) VALUES ('6','Fantasy');
INSERT INTO categories (category_id,category_name) VALUES ('7','Fiction');
INSERT INTO categories (category_id,category_name) VALUES ('8','Historical Fiction');
INSERT INTO categories (category_id,category_name) VALUES ('9','History');
INSERT INTO categories (category_id,category_name) VALUES ('10','Horror');
INSERT INTO categories (category_id,category_name) VALUES ('11','Inspirational');
INSERT INTO categories (category_id,category_name) VALUES ('12','Memoir');
INSERT INTO categories (category_id,category_name) VALUES ('13','Mystery');
INSERT INTO categories (category_id,category_name) VALUES ('14','Non-Fiction');
INSERT INTO categories (category_id,category_name) VALUES ('15','Photography');
INSERT INTO categories (category_id,category_name) VALUES ('16','Poetry');
INSERT INTO categories (category_id,category_name) VALUES ('17','Political');
INSERT INTO categories (category_id,category_name) VALUES ('18','Romance');
INSERT INTO categories (category_id,category_name) VALUES ('19','Science Fiction');
INSERT INTO categories (category_id,category_name) VALUES ('20','Social Sciences');
INSERT INTO categories (category_id,category_name) VALUES ('21','Suspense');
INSERT INTO categories (category_id,category_name) VALUES ('22','Technology');
INSERT INTO categories (category_id,category_name) VALUES ('23','Travel');
INSERT INTO categories (category_id,category_name) VALUES ('24','Young Adult');

-- publishers
INSERT INTO publishers (publisher_id,name,country) VALUES ('1','Harper Perennial Modern Classics','USA');
INSERT INTO publishers (publisher_id,name,country) VALUES ('2','Signet Classics','USA');
INSERT INTO publishers (publisher_id,name,country) VALUES ('3','CreateSpace Independent Publishing Platform','USA');
INSERT INTO publishers (publisher_id,name,country) VALUES ('4','Scribner','USA');
INSERT INTO publishers (publisher_id,name,country) VALUES ('5','Penguin Classics','USA');
INSERT INTO publishers (publisher_id,name,country) VALUES ('6','Little, Brown and Company','USA');
INSERT INTO publishers (publisher_id,name,country) VALUES ('7','Mariner Books','USA');
INSERT INTO publishers (publisher_id,name,country) VALUES ('8','HarperOne','USA');

-- authors
INSERT INTO authors (author_id,first_name,last_name,birth_date) VALUES ('1','Harper','Lee','1926-04-28');
INSERT INTO authors (author_id,first_name,last_name,birth_date) VALUES ('2','George','Orwell','1903-06-25');
INSERT INTO authors (author_id,first_name,last_name,birth_date) VALUES ('3','Jane','Austen','1775-12-16');
INSERT INTO authors (author_id,first_name,last_name,birth_date) VALUES ('4','F. Scott','Fitzgerald','1896-09-24');
INSERT INTO authors (author_id,first_name,last_name,birth_date) VALUES ('5','Herman','Melville','1819-08-01');
INSERT INTO authors (author_id,first_name,last_name,birth_date) VALUES ('6','Leo','Tolstoy','1828-09-09');
INSERT INTO authors (author_id,first_name,last_name,birth_date) VALUES ('7','J.D.','Salinger','1919-01-01');
INSERT INTO authors (author_id,first_name,last_name,birth_date) VALUES ('8','J.R.R.','Tolkien','1892-01-03');
INSERT INTO authors (author_id,first_name,last_name,birth_date) VALUES ('9','Aldous','Huxley','1894-07-26');
INSERT INTO authors (author_id,first_name,last_name,birth_date) VALUES ('10','Paulo','Coelho','1947-08-24');

-- languages
INSERT INTO languages (language_id,language_name) VALUES ('1','Arabic');
INSERT INTO languages (language_id,language_name) VALUES ('2','Chinese');
INSERT INTO languages (language_id,language_name) VALUES ('3','English');
INSERT INTO languages (language_id,language_name) VALUES ('4','French');
INSERT INTO languages (language_id,language_name) VALUES ('5','German');
INSERT INTO languages (language_id,language_name) VALUES ('6','Hindi');
INSERT INTO languages (language_id,language_name) VALUES ('7','Japanese');
INSERT INTO languages (language_id,language_name) VALUES ('8','Spanish');
INSERT INTO languages (language_id,language_name) VALUES ('9','Urdu');

-- books
INSERT INTO books (book_id,title,author_id,isbn,summary,publisher_id,language_id) VALUES ('1','To Kill a Mockingbird','1','9780061120084', 'A girl in the racially segregated South learns about justice and morality as her father defends a Black man falsely accused of a crime.','1','3');
INSERT INTO books (book_id,title,author_id,isbn,summary,publisher_id,language_id) VALUES ('2','1984','2','9780451524935','A dystopian society under totalitarian rule suppresses truth and individuality through surveillance and propaganda.','2','3');
INSERT INTO books (book_id,title,author_id,isbn,summary,publisher_id,language_id) VALUES ('3','Animal Farm','2','9780451526342','Farm animals rebel against humans but end up under a dictatorship, mirroring the failures of communism.','2','3');
INSERT INTO books (book_id,title,author_id,isbn,summary,publisher_id,language_id) VALUES ('4','Homage to Catalonia','2','9780156421171', 'Orwell’s firsthand account of fighting in the Spanish Civil War, exposing political betrayals.','7','3');
INSERT INTO books (book_id,title,author_id,isbn,summary,publisher_id,language_id) VALUES ('5','Pride and Prejudice','3','9781503290563','A witty romance about misunderstandings and social status, centered on Elizabeth Bennet and Mr. Darcy.','3','3');
INSERT INTO books (book_id,title,author_id,isbn,summary,publisher_id,language_id) VALUES ('6','The Great Gatsby','4','9780743273565','A wealthy man’s pursuit of a lost love ends in tragedy, highlighting the emptiness of the American Dream.','4','3');
INSERT INTO books (book_id,title,author_id,isbn,summary,publisher_id,language_id) VALUES ('7','Moby Dick','5','9781503280786','A captain obsessively hunts a giant whale, symbolizing humanity’s struggle with fate and obsession.','3','3');
INSERT INTO books (book_id,title,author_id,isbn,summary,publisher_id,language_id) VALUES ('8','War and Peace','6','9780140447934','A sweeping novel following Russian aristocrats through love, war, and personal growth during the Napoleonic Wars.','5','3');
INSERT INTO books (book_id,title,author_id,isbn,summary,publisher_id,language_id) VALUES ('9','The Catcher in the Rye','7','9780316769488','A disillusioned teenager wanders New York, struggling with identity and societal expectations.','6','3');
INSERT INTO books (book_id,title,author_id,isbn,summary,publisher_id,language_id) VALUES ('10','The Hobbit','8','9780547928227','A reluctant hobbit embarks on an adventure to reclaim a treasure guarded by a dragon.','7','3');
INSERT INTO books (book_id,title,author_id,isbn,summary,publisher_id,language_id) VALUES ('11','The Lord of the Rings: The Fellowship of the Ring','8','9780547928210','A group sets out to destroy a powerful ring to stop an evil lord’s rise.','7','3');
INSERT INTO books (book_id,title,author_id,isbn,summary,publisher_id,language_id) VALUES ('12','Brave New World','9','9780060850524','A futuristic society controls people through pleasure, conditioning, and a rigid caste system.','1','3');
INSERT INTO books (book_id,title,author_id,isbn,summary,publisher_id,language_id) VALUES ('13','The Alchemist','10','9780062315007','A shepherd follows his dreams, learning about destiny, perseverance, and personal legend.','8','3');
INSERT INTO books (book_id,title,author_id,isbn,summary,publisher_id,language_id) VALUES ('14','Moby Dick','5','9781503280786','A captain obsessively hunts a giant whale, symbolizing humanity’s struggle with fate and obsession.','3','3');
INSERT INTO books (book_id,title,author_id,isbn,summary,publisher_id,language_id) VALUES ('15','Moby Dick','5','9781503280786','A captain obsessively hunts a giant whale, symbolizing humanity’s struggle with fate and obsession.','3','3');
INSERT INTO books (book_id,title,author_id,isbn,summary,publisher_id,language_id) VALUES ('16','Animal Farm','2','9780451526342','Farm animals rebel against humans but end up under a dictatorship, mirroring the failures of communism.','2','3');
INSERT INTO books (book_id,title,author_id,isbn,summary,publisher_id,language_id) VALUES ('17','The Hobbit','8','9780547928227','A reluctant hobbit embarks on an adventure to reclaim a treasure guarded by a dragon.','7','3');
INSERT INTO books (book_id,title,author_id,isbn,summary,publisher_id,language_id) VALUES ('18','The Hobbit','8','9780547928227','A reluctant hobbit embarks on an adventure to reclaim a treasure guarded by a dragon.','7','3');


-- book_categories
INSERT INTO book_categories (book_id,category_id) VALUES ('1','7');
INSERT INTO book_categories (book_id,category_id) VALUES ('1','3');
INSERT INTO book_categories (book_id,category_id) VALUES ('1','8');
INSERT INTO book_categories (book_id,category_id) VALUES ('2','7');
INSERT INTO book_categories (book_id,category_id) VALUES ('2','4');
INSERT INTO book_categories (book_id,category_id) VALUES ('2','17');
INSERT INTO book_categories (book_id,category_id) VALUES ('3','7');
INSERT INTO book_categories (book_id,category_id) VALUES ('3','17');
INSERT INTO book_categories (book_id,category_id) VALUES ('4','14');
INSERT INTO book_categories (book_id,category_id) VALUES ('4','12');
INSERT INTO book_categories (book_id,category_id) VALUES ('4','9');
INSERT INTO book_categories (book_id,category_id) VALUES ('5','7');
INSERT INTO book_categories (book_id,category_id) VALUES ('5','18');
INSERT INTO book_categories (book_id,category_id) VALUES ('5','3');
INSERT INTO book_categories (book_id,category_id) VALUES ('6','7');
INSERT INTO book_categories (book_id,category_id) VALUES ('6','3');
INSERT INTO book_categories (book_id,category_id) VALUES ('7','7');
INSERT INTO book_categories (book_id,category_id) VALUES ('7','1');
INSERT INTO book_categories (book_id,category_id) VALUES ('7','3');
INSERT INTO book_categories (book_id,category_id) VALUES ('8','7');
INSERT INTO book_categories (book_id,category_id) VALUES ('8','9');
INSERT INTO book_categories (book_id,category_id) VALUES ('8','3');
INSERT INTO book_categories (book_id,category_id) VALUES ('9','7');
INSERT INTO book_categories (book_id,category_id) VALUES ('9','3');
INSERT INTO book_categories (book_id,category_id) VALUES ('10','7');
INSERT INTO book_categories (book_id,category_id) VALUES ('10','6');
INSERT INTO book_categories (book_id,category_id) VALUES ('10','1');
INSERT INTO book_categories (book_id,category_id) VALUES ('11','7');
INSERT INTO book_categories (book_id,category_id) VALUES ('11','6');
INSERT INTO book_categories (book_id,category_id) VALUES ('11','5');
INSERT INTO book_categories (book_id,category_id) VALUES ('12','7');
INSERT INTO book_categories (book_id,category_id) VALUES ('12','4');
INSERT INTO book_categories (book_id,category_id) VALUES ('12','19');
INSERT INTO book_categories (book_id,category_id) VALUES ('13','7');
INSERT INTO book_categories (book_id,category_id) VALUES ('13','1');
INSERT INTO book_categories (book_id,category_id) VALUES ('13','11');
INSERT INTO book_categories (book_id,category_id) VALUES ('14','7');
INSERT INTO book_categories (book_id,category_id) VALUES ('14','1');
INSERT INTO book_categories (book_id,category_id) VALUES ('14','3');
INSERT INTO book_categories (book_id,category_id) VALUES ('15','7');
INSERT INTO book_categories (book_id,category_id) VALUES ('15','1');
INSERT INTO book_categories (book_id,category_id) VALUES ('15','3');
INSERT INTO book_categories (book_id,category_id) VALUES ('16','7');
INSERT INTO book_categories (book_id,category_id) VALUES ('16','17');
INSERT INTO book_categories (book_id,category_id) VALUES ('17','7');
INSERT INTO book_categories (book_id,category_id) VALUES ('17','6');
INSERT INTO book_categories (book_id,category_id) VALUES ('17','1');
INSERT INTO book_categories (book_id,category_id) VALUES ('18','7');
INSERT INTO book_categories (book_id,category_id) VALUES ('18','6');
INSERT INTO book_categories (book_id,category_id) VALUES ('18','1');

-- members
INSERT INTO members(first_name, last_name, email, phone)
VALUES
('John', 'Doe','johndoe@email.com','1-888-168-2888'),
('Kari','Brooks','kari.brooks@email.com','9-450-510-7435'),
('Rebecca','Jacobs','rebecca.jacobs@email.com','6-346-105-6927'),
('Nicholas','Cook','nicholas.cook@email.com','1-590-525-2352'),
('Christopher','Valencia','christopher.valencia@email.com','2-466-658-6710'),
('Steven','Flores','steven.flores@email.com','4-671-183-7002'),
('Brandon','Stevenson','brandon.stevenson@email.com','6-147-448-1782'),
('Jamie','Clark','jamie.clark@email.com','2-587-596-6055'),
('Mark','Sullivan','mark.sullivan@email.com','9-603-391-8943'),
('Jasmine','Bailey','jasmine.bailey@email.com','2-360-452-4952'),
('Paige','Lloyd','paige.lloyd@email.com','9-641-177-1474'),
('Ryan','Hays','ryan.hays@email.com','7-911-176-9467'),
('Joseph','Johnson','joseph.johnson@email.com','6-254-954-2750'),
('Rachel','Giles','rachel.giles@email.com','1-348-234-9061'),
('Julie','Obrien','julie.obrien@email.com','1-478-732-9061'),
('Jeffery','Ortiz','jeffery.ortiz@email.com','1-514-126-9061'),
('Rachel','Kim','rachel.kim@email.com','1-943-832-9061'),
('Christian','Bolton','christian.bolton@email.com','1-234-462-9061'),
('Christopher','Huffman','christopher.huffman@email.com','1-642-862-9061'),
('Stacey','White','stacey.white@email.com','1-752-234-9061'),
('Nicole','Garrett','nicole.garrett@email.com','1-123-462-9061'),
('Jenna','Robles','jenna.robles@email.com','1-478-983-9061'),
('Kimberly','Hurst','kimberly.hurst@email.com','1-563-652-9061'),
('Angela','Rivera','angela.rivera@email.com','1-442-138-9061'),
('Anna','Houston','anna.houston@email.com','1-652-488-9061');

-- borrowing
INSERT INTO borrowing (borrowing_id, member_id, book_id, borrow_date, return_date)
VALUES
('1','1','5', NOW(), NOW() + INTERVAL '7 days'),
('2','1','2', NOW(), NOW() + INTERVAL '7 days'),
('3','3','3', NOW(), NOW() + INTERVAL '7 days'),
('4','4','7', NOW(), NOW() + INTERVAL '7 days'),
('5','5','11', NOW(), NOW() + INTERVAL '7 days'),
('6','6','8', NOW(), NOW() + INTERVAL '7 days'),
('7','7','13', NOW(), NOW() + INTERVAL '7 days'),
('8','8','4', NOW(), NOW() + INTERVAL '7 days'),
('9','9','17', NOW(), NOW() + INTERVAL '7 days'),
('10','10','10', NOW(), NOW() + INTERVAL '7 days');