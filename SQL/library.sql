-- Active: 1722947031169@@127.0.0.1@3306
-----------------Library sql database by Nombulelo Nkala--------------------

-- Authors table
CREATE TABLE Authors (
    a_ID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(100) NOT NULL,
    LastName VARCHAR(100) NOT NULL,
    Nationality ENUM('American', 'British', 'Canadian', 'Australian', 'Other') NOT NULL
);

-- Books table
CREATE TABLE Books (
    b_ID INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(255) NOT NULL,
    a_ID INT NOT NULL,
    Description VARCHAR(255) NOT NULL,
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);


-- Inserting data into the Authors table
INSERT INTO Authors (First_Name, Last_Name, Nationality) VALUES
('William', 'Shakespeare', 'British'),
('Agatha', 'Christie', 'American'),
('Danielle', 'Steel', 'American'),
('Steve', 'Harvey', 'British'),
('Mark', 'Twain', 'American');

-- Inserting data into the Books table
INSERT INTO Books (Title, a_ID, Description) VALUES
('Othello', 1, 'A tragedy about jealousy and deceit.'),
('Romeo and Juliet', 1, 'A tragic romance between two young lovers.'),
('Hamlet', 1, 'A tragedy about the Prince of Denmark.'),
('Murder on the Orient Express', 2, 'A detective novel featuring Hercule Poirot.'),
('And Then There Were None', 2, 'A mystery novel where ten strangers are invited to an isolated island.'),
('The Ghost', 3, 'A novel about a ghostwriter hired to write the memoirs of a former British Prime Minister.'),
('The House on Hope Street', 3, 'A novel about rebuilding life after a tragedy.'),
('Act Like a Lady, Think Like a Man', 4, 'A relationship advice book.'),
('Jump: Take the Leap of Faith to Achieve Your Life of Abundance', 4, 'A motivational book encouraging personal success.'),
('The Adventures of Tom Sawyer', 5, 'A novel about a young boy growing up along the Mississippi River.');


--My queries: 
-- checking the records of the Authors, and the Books table
SELECT * FROM Authors;
SELECT * FROM Books;

--a book with its author
SELECT Books.Title, CONCAT(Authors.First_Name,' ',Authors.Last_Name) as Author
From Books, Authors
WHERE Books.a_ID = Authors.a_ID;

--count number of books
SELECT count(*) as Number_of_books
FROM Books;

--COUNT HOW MANY BOOKS AN AUTHOR HAS
SELECT Authors.First_Name, Authors.Last_Name, COUNT(Books.b_ID) AS BookCount
FROM Authors 
JOIN Books  ON Authors.a_ID = Books.a_ID
GROUP BY Authors.a_ID, Authors.First_Name, Authors.Last_Name
ORDER BY BookCount DESC
LIMIT 1;

--how many books there are according to nationality,
SELECT Authors.Nationality, COUNT(Books.b_ID) AS BookCount
FROM Authors
JOIN Books ON Authors.a_ID = Books.a_ID
GROUP BY Authors.Nationality
ORDER BY BookCount DESC;

-------------------------------------End of the Library database by Nombulelo Nkala---------------------------------------------