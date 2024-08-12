# SQL
An SQL database for a library
# Overview
The Library Database is a simple relational database system designed to manage information about books and their authors. It includes two main tables: Authors and Books, allowing users to store and retrieve data efficiently. This database is ideal for tracking books, their descriptions, and their corresponding authors.
# Database Structure
tables:  
Authors

AuthorID: INTEGER PRIMARY KEY AUTOINCREMENT  
FirstName: VARCHAR(100) NOT NULL  
LastName: VARCHAR(100) NOT NULL  
Nationality: ENUM('American', 'British', 'Canadian', 'Australian', 'Other') NOT NULL

Books

BookID: INTEGER PRIMARY KEY AUTOINCREMENT  
Title: VARCHAR(255) NOT NULL  
AuthorID: INTEGER NOT NULL  
Description: TEXT  
Foreign Key: AuthorID references Authors(AuthorID)

# Getting Started
Prerequisites:  
=SQLite installed on your machine.  
=Basic understanding of SQL.  

Setup Instructions:  
-- Create the Authors table  
CREATE TABLE IF NOT EXISTS Authors (  
    AuthorID INTEGER PRIMARY KEY AUTOINCREMENT,  
    FirstName VARCHAR(100) NOT NULL,  
    LastName VARCHAR(100) NOT NULL,  
    Nationality ENUM('American', 'British', 'Canadian', 'Australian', 'Other') NOT NULL  
);  
  
-- Create the Books table  
CREATE TABLE IF NOT EXISTS Books (  
    BookID INTEGER PRIMARY KEY AUTOINCREMENT,  
    Title VARCHAR(255) NOT NULL,  
    AuthorID INTEGER NOT NULL,  
    Description TEXT,  
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)  
);  

Populate database:  
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

# License
This project is licensed under the MIT License - see the LICENSE file for details.
# Acknowledgements
This project was developed as an sql task to develop a database that will store a book with it's author, and I named it the library database, using SQLite.
# Author
Nombulelo Nkala.
