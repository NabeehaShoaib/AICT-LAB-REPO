CREATE DATABASE Library;
USE  Library;
CREATE TABLE Members (
   Member_id INT PRIMARY KEY,
   Name VARCHAR(20) ,
    Email VARCHAR(30)
 );
 CREATE TABLE Books (
 Book_id INT PRIMARY KEY,
 Title VARCHAR(20),
 Author varchar(20),
 Genre VARCHAR(10)
 );
 CREATE TABLE Borrow (
 Borrow_date DATE,
 Return_date DATE,
 Member_id INT,
 Book_id INT,
 FOREIGN KEY (Member_id) REFERENCES Members(Member_id),
 FOREIGN KEY (Book_id) REFERENCES Books(Book_id)
 );
 INSERT INTO Members (Member_id, Name, Email) VALUES
 (1, "NABEEHA", "abc@gmail.com"),
 (2, "NABEEL", "abc1@gmail.com"),
 (3, "NEHA", "abc2@gmail.com"),
 (4, "ALI", "abc3@gmail.com");
 SELECT * FROM Members;
 INSERT INTO Books (Book_id, Title, Author, Genre) VALUES
 (101, "SCIENCE ADVENTURES", "REMO", "FICTION"),
 (102, "FAIRY TALES", "THOMAS", " CHILDREN BOOK"),
 (103, "COMPUTER", "AURTHOR", "ACADEMIC"),
 (104, "AICT", "ALI", "TECHNICAL"),
 (105, "BIOLOGY", "MS MALIK", "TECHNICAL");
 ALTER TABLE Books
 MODIFY Title VARCHAR(50),
 MODIFY Genre VARCHAR(50);
 SELECT * FROM Books;
 INSERT INTO Borrow (Member_id, Book_id, Borrow_date, Return_date) VALUES
 (1, "NABEEHA", "abc@gmail.com"),
 (2, "NABEEL", "abc1@gmail.com"),
 (3, "NEHA", "abc2@gmail.com"),
 (4, "ALI", "abc3@gmail.com");
 SELECT * FROM Borrow;
 
 

 
 

 
 
 
 
 
 
 