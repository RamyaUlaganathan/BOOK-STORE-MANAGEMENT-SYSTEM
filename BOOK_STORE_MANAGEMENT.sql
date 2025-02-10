-- CREATING A DATABASE FOR BOOK STORE MANAGEMENT
create database BOOK_STORE_MANAGEMENT;
-- END

--  USING A DATABASE OF BOOK STORE MANAGEMENT
USE BOOK_STORE_MANAGEMENT;
-- END 

-- CREATING BOOKS TABLE IN THE DATABASE BOOK STORE MANAGEMENT
create table BOOKS (
BOOK_ID varchar(10) primary key,
BOOK_NAME varchar(30) not null,
GENERE varchar(20) not null,
AUTHOR varchar(20) not null,
PRICE float );
-- END

-- SELECT A BOOKS TABLE
Select * From BOOKS;
-- END

-- INSERTING VALUES IN THE BOOKS TABLE
insert into BOOKS () values 
("B001", "The Big Sleep", "crime", "Raymond Chandler", 1000),
("B002", "The Color of Magic", "Humor", "Terry Pratchett", 500.25),
("B003", "The Lord of the Rings", "Fantasy", "JRR Tolkien", 270),
("B004", "Operation Gene", "Scientific", "Sukanya Datta", 300),
("B005", "Strange Practice", "Paranormal", "Vivian Shaw", 400),
("B006", "The Golden Bird", "Fairy tale", "Mouloud Mammeri", 600),
("B007", "A Rising Man", "Mystery", "Abir Mukherjee", 100.5),
("B008", "The Stand", "Horror", "Stephen King", 450),
("B009", "The Woman in White", "Thriller", "Wilkie Collins", 700),
("B010", "99 RED BALLOONS", "Suspense", "Elisabeth Carpenter", 800.65),
("B011", "Jurassic Park", "Action", "Michael Crichton", 1500),
("B012", "Heart of Darkness", "Adventure", "Joseph Conrad", 300),
("B013", "Panch Tantra", "Historical", "Vishnu Sharma", 500),
("B014", "The Old Man and the Sea", "Fictional", "Ernest Hemingway", 650.45),
("B015", "The Goldfinch", "Contemporary", "Donna Tartt", 2000),
("B016", "The Catcher in the Rye", "Fiction", "J.D.Salinger", 800),
("B017", "To Kill a Mockingbird", "Classic", "Harper Lee", 950),
("B018", "1984", "Dystopian", "George Orwell", 600),
("B019", "Brave New World", "Dystopian", "Aldous Huxley", 550),
("B020", "Fahrenheit 451", "Science Fiction", "Ray Bradbury", 700),
("B021", "The Hobbit", "Fantasy", "J.R.R. Tolkien", 650),
("B022", "The Shining", "Horror", "Stephen King", 800),
("B023", "Moby Dick", "Adventure", "Herman Melville", 500),
("B024", "The Great Gatsby", "Classic", "Scott Fitzgerald", 900),
("B025", "Crime and Punishment", "Classic", "Fyodor Dostoevsky", 600);
-- END

-- CREATING CUSTOMERS TABLE IN THE DATABASE BOOK STORE MANAGEMENT
create table CUSTOMERS (
CUSTOMER_ID varchar(10) primary key,
FIRST_NAME varchar(30) not null,
LAST_NAME varchar(30) not null,
GENDER varchar(20) not null,
AGE int,
EMAIL varchar(50) not null,	
PHONE varchar(10)
);
-- END

-- SELECT A CUSTOMERS TABLE
Select * From CUSTOMERS;
-- END

-- INSERTING VALUES IN THE CUSTOMER TABLE
insert into CUSTOMERS() VALUES
("CUST001","John","Smith","Male",32,"john.smith@email.com",9123456789),
("CUST002","Emily","Johnson","Female",22,"emily.johnson@email.com",9223467890),
("CUST003","Michael","Brown","Male",45,"michael.brown@email.com",9333478901),
("CUST004","Sarah","Davis","Female",36,"sarah.davis@email.com",9443489012),
("CUST005","David","Wilson","Male",51,"david.wilson@email.com",9553490123),
("CUST006","Jessica","Moore","Female",28,"jessica.moore@email.com",9663401234),
("CUST007","Daniel","Taylor","Male",24,"daniel.taylor@email.com",9773412345),
("CUST008","Olivia","Anderson","Female",29,"olivia.anderson@email.com",9883423456),
("CUST009","James","Thomas","Male",41,"james.thomas@email.com",9993434567),
("CUST010","Isabella","Martinez","Female",23,"isabella.martinez@email.com",9103445678),
("CUST011","Matthew","Garcia","Male",28,"matthew.garcia@email.com",9213456789),
("CUST012","Chloe","Robinson","Female",33,"chloe.robinson@email.com",9323467890),
("CUST013","Alexander","Clark","Male",39,"alexander.clark@email.com",9433478901),
("CUST014","Lily","Lewis","Female",21,"lily.lewis@email.com",9543489012),
("CUST015","Samuel","Walker","Male",50,"samuel.walker@email.com",9653490123),
("CUST016","Mia","Hall","Female",26,"mia.hall@email.com",9763401234),
("CUST017","Benjamin","Allen","Male",37,"benjamin.allen@email.com",9873412345),
("CUST018","Sophia","Young","Female",31,"sophia.young@email.com",9983423456),
("CUST019","Jacob","King","Male",48,"jacob.king@email.com",9093434567),
("CUST020","Harper","Scott","Female",40,"harper.scott@email.com",9103445678);
-- END

-- CREATING ORDERS TABLE IN THE DATABASE BOOK_STORE_MANAGEMENT
create table ORDERS(
ORDER_ID varchar(10) primary key,	
BOOK_ID	varchar(10), 
FOREIGN KEY(BOOK_ID) REFERENCES BOOKS(BOOK_ID),
CUSTOMER_ID varchar(10),
FOREIGN KEY(CUSTOMER_ID) REFERENCES CUSTOMERS(CUSTOMER_ID),	
QUANTITY int, 	
ORDER_DATE date
 );
 -- END

-- INSERTING VALUES IN THE ORDERS TABLE
insert into ORDERS() values
("ORD01", "B012", "CUST010", 7, "2024-12-19"),
("ORD02", "B005", "CUST002", 9, "2025-01-14"),
("ORD03", "B006", "CUST013", 5, "2024-12-03"),
("ORD04", "B005", "CUST005", 4, "2024-12-15"),
("ORD05", "B001", "CUST004", 6, "2024-12-09"),
("ORD06", "B010", "CUST007", 2, "2025-01-06"),
("ORD07", "B016", "CUST013", 1, "2024-12-07"),
("ORD08", "B013", "CUST008", 8, "2025-01-01"),
("ORD09", "B007", "CUST002", 3, "2024-12-11"),
("ORD10", "B009", "CUST019", 10, "2025-01-09");
-- END

-- SELECT A ORDERS TABLE
Select * From ORDERS;
-- END

-- CREATING CARTS TABLE IN THE DATABASE BOOK_STORE_MANAGEMENT
create table CARTS(
CART_ID	varchar(10) primary key,
CUSTOMER_ID varchar(10),
FOREIGN KEY(CUSTOMER_ID) REFERENCES CUSTOMERS(CUSTOMER_ID),
BOOK_ID	varchar(10), 
FOREIGN KEY(BOOK_ID) REFERENCES BOOKS(BOOK_ID)
);
-- END

-- INSERTING VALUES IN THE CARTS TABLE
insert into CARTS() values
("CRT01", "CUST005", "B005"),
("CRT02", "CUST010", "B014"),
("CRT03", "CUST013", "B007"),
("CRT04", "CUST019", "B002"),
("CRT05", "CUST003", "B010"),
("CRT06", "CUST016", "B012"),
("CRT07", "CUST007", "B003"),
("CRT08", "CUST020", "B015"),
("CRT09", "CUST004", "B008"),
("CRT10", "CUST009", "B001");
-- END

-- SELECT A CARTS TABLE
Select * From CARTS;
-- END

-- CREATING STOCKS TABLE IN THE DATABASE BOOK_STORE_MANAGEMENT
create table STOCKS(
STOCK_ID varchar(10) primary key,
BOOK_ID	varchar(10), 
FOREIGN KEY(BOOK_ID) REFERENCES BOOKS(BOOK_ID),
NO_OF_BOOKS int
);
-- END

-- INSERTING VALUES IN THE STOCKS TABLE
insert into STOCKS() values
("STK01", "B001", 13),
("STK02", "B002", 25),
("STK03", "B003", 7),
("STK04", "B004", 18),
("STK05", "B005", 5),
("STK06", "B006", 22),
("STK07", "B007", 29),
("STK08", "B008", 12),
("STK09", "B009", 10),
("STK10", "B010", 27),
("STK11", "B011", 4),
("STK12", "B012", 16),
("STK13", "B013", 3),
("STK14", "B014", 20),
("STK15", "B015", 9),
("STK16", "B016", 21),
("STK17", "B017", 15),
("STK18", "B018", 28),
("STK19", "B019", 19),
("STK20", "B020", 6),
("STK21", "B021", 26),
("STK22", "B022", 8),
("STK23", "B023", 30),
("STK24", "B024", 2),
("STK25", "B025", 24);
-- END

-- SELECT A STOCKS TABLE
Select * From STOCKS;
-- END

-- ****************************************************************************************************************************** --
                             -- !!!!! SOME OF QUERYS USING THE ABOVE TABLES !!!!! --

-- (1) LIST BOOKS WITH STOCK LOWER THAN 5
SELECT b.BOOK_ID,b.BOOK_NAME,s.NO_OF_BOOKS, s.stock_id
FROM BOOKS b
INNER JOIN STOCKS s
ON b.BOOK_ID = s.BOOK_ID
WHERE NO_OF_BOOKS < 5;
-- END

-- (2) IDENTIFY THE CUSTOMERS WITH THE MOST ORDERED
select c.customer_id, c.first_name,C.GENDER,C.EMAIL,C.PHONE, COUNT(o.order_id) AS total_orders
FROM customers c
INNER JOIN orders o 
ON c.customer_id = o.customer_id
GROUP BY c.customer_id
ORDER BY total_orders desc 
limit 1;
-- END

-- (3) IDENTIFY THE LEAST ORDERED BOOKS
select b.BOOK_ID,b.BOOK_NAME,COUNT(o.order_id) AS total_orders
from books b
 join orders o
 on b.book_id = o.book_id
 group by b.book_id
 order by total_orders asc
 limit 1;
 -- END
 
 -- (4) IDENTIFY THE BOOK WITH 2ND HIGHEST PRICE
select * from books
group by book_id
order by price desc
limit 1
offset 1;
-- END

-- (5) CUSTOMER AGE BETWEEN 20 TO 30
select * from customers 
where age between 20 and 30;
-- END

-- (6) SORT THE BOOKS BY ORDERING QUANTITY FROM HIGHEST TO LOWEST WITH ORDER ID

SELECT b.book_id, b.book_name, O.ORDER_ID,o.quantity AS total_quantity
FROM books b
INNER JOIN orders o 
ON b.book_id = o.book_id
ORDER BY total_quantity DESC;
-- END

-- (7) SEPARATE GENRE BY THEIR TYPES
select BOOK_ID, book_name, author, genere 
from books
order by genere asc;
-- END

-- (8) LIST OUT BOOKS ORDERED WITH QUANTITY BETWEEN 5 AND 10
select * from ORDERS
where QUANTITY between 5 and 10
ORDER BY QUANTITY asc;
-- END

-- (9) LIST OUT CUSTOMERS WHO ADDED BOOKS TO THEIR CARTS
SELECT CUST.CUSTOMER_ID,CUST.FIRST_NAME,CUST.LAST_NAME,CARTS.CART_ID
FROM CUSTOMERS CUST
JOIN CARTS carts
ON CUST.CUSTOMER_ID = CARTS.CUSTOMER_ID ;
-- END

-- (10) LIST OUT THE  FEMALE CUSTOMERS
SELECT * FROM CUSTOMERS 
WHERE GENDER="FEMALE";
-- END

-- (11) LIST OUT ALL MALE CUSTOMERS FIRST AND THEN FEMALE 
SELECT * FROM customers
ORDER BY GENDER DESC;
-- END

-- (12) LIST OUT THE WHO WERE NOT ORDER ANY OF THE BOOKS
SELECT c.customer_id, c.first_name,c.LAST_NAME,c.GENDER,c.AGE,c.EMAIL
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;
-- END

-- (13) LIST OUT GENERE TYPES AND COUNT OF GENERE HAVING MORE THAN 1
SELECT GENERE, COUNT(*) AS NUM_BOOKS
FROM books
GROUP BY GENERE
HAVING COUNT(*) > 1;

-- *********************************************************************************************************************************** --
                                             -- !!!!! CREATING VIEWS !!!!! --

-- (1) CREATING VIEW TO LIST OUT THE  FEMALE CUSTOMERS
create view Female_Cust as 
SELECT * FROM CUSTOMERS 
WHERE GENDER="FEMALE";

select * from Female_Cust;

-- (2) CREATING VIEW TO  LIST OUT BOOKS ORDERED WITH QUANTITY BETWEEN 5 AND 10

create view BOOK_ORDER_BETWEEN_5_TO_10 as
select * from ORDERS
where QUANTITY between 5 and 10
ORDER BY QUANTITY asc;

SELECT * FROM BOOK_ORDER_BETWEEN_5_TO_10;

-- (3) CREATING VIEW TO IDENTIFY THE BOOK WITH 1ST HIGHEST PRICE
create view First_Highest_Book_Price AS
select * from books
group by book_id
order by price desc
limit 1
offset 1;

SELECT * FROM First_Highest_Book_Price;

-- (4) CREATING VIEW TO LIST BOOKS WITH STOCK LOWER THAN 5

CREATE VIEW STOCK_LOWER_THAN_5 AS
SELECT b.BOOK_ID,b.BOOK_NAME,s.NO_OF_BOOKS, s.stock_id
FROM BOOKS b
INNER JOIN STOCKS s
ON b.BOOK_ID = s.BOOK_ID
WHERE NO_OF_BOOKS < 5;

SELECT * FROM STOCK_LOWER_THAN_5;
-- ******************************************************************************************************************************** --
                                           -- !!!!! STORED PROCEDURE !!!!! --

-- (1) STORED PROCEDURE FOR MOST ORDERED CUSOMER

delimiter $$
create procedure Cust_Most_Ordered() -- without parameters
begin
    select c.customer_id, c.first_name,C.GENDER,C.EMAIL,C.PHONE, COUNT(o.order_id) AS total_orders
FROM customers c
INNER JOIN orders o 
ON c.customer_id = o.customer_id
GROUP BY c.customer_id
ORDER BY total_orders desc 
limit 1;
end $$
delimiter ;

-- (2) STORED PROCEDURE FOR CUSTOMER WHO ADDED BOOKS IN THE CART

delimiter $$
create procedure Cust_In_Carts() -- without parameters
begin
   SELECT CUST.CUSTOMER_ID,CUST.FIRST_NAME,CUST.LAST_NAME,CARTS.CART_ID
   FROM CUSTOMERS CUST
   JOIN CARTS carts
   ON CUST.CUSTOMER_ID = CARTS.CUSTOMER_ID ; 
end $$
delimiter ;

-- (3) STORED PROCEDURE TO IDENTIFY THE GENERE TYPES

delimiter $$
create procedure Genere_Types() -- without parameters
begin
   select BOOK_ID, book_name, author, genere 
   from books
   order by genere asc;
end $$
delimiter ;

-- (4) STORED PROCEDURE TO FIND CUSTOMER GENDER --

delimiter $$
create procedure Cust_Gender(in INPUT_GENDER varchar(10)) -- without parameters
begin
    SELECT * FROM customers
    where GENDER = INPUT_GENDER; 
end $$
delimiter ;

-- (5) STORED PROCEDURE TO FIND THE BOOKS WITH ID
delimiter $$
create procedure Find_Books(in INPUT_BOOKID varchar(10)) -- without parameters
begin
    SELECT * FROM BOOKS
    where BOOK_ID = INPUT_BOOKID; 
end $$
delimiter ;

-- (6) STORED PROCEDURE TO FIND THE CUSTOMER USING PHONE NUMBER
delimiter $$
create procedure Cust_Phone(in INPUT_PHONE varchar(10)) -- without parameters
begin
    SELECT * FROM CUSTOMERS
    where PHONE = INPUT_PHONE; 
end $$
delimiter ;

-- (7) STORED PROCEDURE TO GET TOTAL COUNT OF BOOKS 

DELIMITER //
CREATE PROCEDURE GetTotalBOOKS(OUT BOOK_TOTAL INT)
BEGIN
    SELECT COUNT(*) INTO BOOK_TOTAL FROM BOOKS;
END //
DELIMITER ;

call GetTotalBOOKS(@BOOKTOTAL);

-- (8) STORED PROCEDURE TO FIND LEAST ORDERED BOOK

delimiter $$
create procedure Least_Order_Book() -- without parameters
begin
  select b.BOOK_ID,b.BOOK_NAME,COUNT(o.order_id) AS total_orders
from books b
 join orders o
 on b.book_id = o.book_id
 group by b.book_id
 order by total_orders asc
 limit 1; 
end $$
delimiter ;

-- (9) STORED PROCEDURE TO FIND ORDER QUANTITY OF BOOKS FROM HIGHEST TO LOWEST

delimiter $$
create procedure Order_Quantity_High_To_Low() -- without parameters
begin
   SELECT b.book_id, b.book_name, O.ORDER_ID,o.quantity AS total_quantity
   FROM books b
   INNER JOIN orders o 
   ON b.book_id = o.book_id
   ORDER BY total_quantity DESC;
end $$
delimiter ;

-- (10) STORED PROCEDURE TO FIND THE FIRST HIGHEST BOOK PRICE
 
 delimiter $$
create procedure First_Highest_Book_Price() -- without parameters
begin
   select * from books
    group by book_id
    order by price desc
	limit 1 ;
end $$
delimiter ;

-- (11) STORED PROCEDURE FOR CUSTOMER NOT IN ORDERS LIST


delimiter $$
Create procedure Cust_NotIn_orderlist() 
begin 
    SELECT c.customer_id, c.first_name,c.LAST_NAME,c.GENDER,c.AGE,c.EMAIL
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;
End $$
Delimiter  ;
-- ***************************************************************************************************************************** --
                                  -- !!!!! CALL BY PROCEDURES !!!!! --

Call Cust_Most_Ordered();
Call Cust_Gender("FEMALE");
Call Cust_In_Carts();
Call Genere_Types();
Call Find_Books ("B009");
Call Least_Order_Book();
Call Cust_NotIn_orderlist();
Call Order_Quantity_High_To_Low() ;
Call Cust_Phone("9443489012");
Call First_Highest_Book_Price();
SELECT @BOOKTOTAL;
