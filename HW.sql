CREATE TABLE "staff" (
  "idStaff" SERIAL PRIMARY KEY,
  "firstName" VARCHAR(50),
  "lastName" VARCHAR(50)
);

CREATE TABLE "movieList" (
  "idMovie" SERIAL PRIMARY KEY,
  "title" VARCHAR(150),
  "releaseYear" DATE,
  "language" VARCHAR(50),
  "rating" VARCHAR(50)
);

CREATE TABLE "kitchen" (
  "idOrderK" SERIAL PRIMARY KEY,
  "item" VARCHAR(50),
  "price" NUMERIC(5,2)
);

CREATE TABLE "customer" (
  "idCustomer" SERIAL PRIMARY KEY,
  "firstName" VARCHAR(50),
  "lastName" VARCHAR(50),
  "address" VARCHAR(100)
);

CREATE TABLE "ticket" (
  "idTicket" SERIAL PRIMARY KEY,
  "startTime" TIME,
  "price" NUMERIC(5,2),
  "idMovie" INTEGER REFERENCES "movieList"("idMovie")
);


CREATE TABLE "checkout" (
  "idOrder" SERIAL PRIMARY KEY,
  "orderDate" DATE,
  "total" NUMERIC(5,2),
  "idStaff" INTEGER REFERENCES "staff"("idStaff"),
  "idCustomer" INTEGER REFERENCES "customer"("idCustomer")
);

CREATE TABLE "quantity" (
  "idQuantity" SERIAL PRIMARY KEY,
  "kitchenQ" INTEGER,
  "ticketQ" INTEGER,
  "idOrderK" INTEGER REFERENCES "kitchen"("idOrderK"),
  "idTicket" INTEGER REFERENCES "ticket"("idTicket"),
  "idOrder" INTEGER REFERENCES "checkout"("idOrder")
);


SELECT *
FROM checkout;
FROM customer;
FROM kitchen;
FROM "movieList";
FROM quantuty;
FROM staff;
FROM ticket;
--//
INSERT INTO staff(
	"firstName",
	"lastName"
)VALUES(
	'Jared',
	'Ely'
);
INSERT INTO staff(
	"firstName",
	"lastName"
)VALUES(
	'Mary',
	'Smith'
);
INSERT INTO staff(
	"firstName",
	"lastName"
)VALUES(
	'Patricia',
	'Johnson'
);
INSERT INTO staff(
	"firstName",
	"lastName"
)VALUES(
	'Linda',
	'Williams'
);
--/

INSERT INTO customer(
	"firstName",
	"lastName",
	"address"
)VALUES(
	'Lisa',
	'Anderson',
	'1566 Inegl Manor'
);
INSERT INTO customer(
	"firstName",
	"lastName",
	"address"
)VALUES(
	'Jennifer',
	'Davis',
	'1411 Lillydale Drive'
);
INSERT INTO customer(
	"firstName",
	"lastName",
	"address"
)VALUES(
	'Maria',
	'Miller',
	'692 Joliet Street'
);
INSERT INTO customer(
	"firstName",
	"lastName",
	"address"
)VALUES(
	'Susan',
	'Wilson',
	'1795 Santiago de Compostela Way'
);
INSERT INTO customer(
	"firstName",
	"lastName",
	"address"
)VALUES(
	'Margaret',
	'Moore',
	'1121 Loja Avenue'
);
INSERT INTO customer(
	"firstName",
	"lastName",
	"address"
)VALUES(
	'Dorothy',
	'Taylor',
	'47 MySakila Drive'
);
--
INSERT INTO kitchen(
	"item",
	"price"
)VALUES(
	'Popcorn',
	6.50
);
INSERT INTO kitchen(
	"item",
	"price"
)VALUES(
	'Soft Drink',
	5.99
);
INSERT INTO "movieList" (	
	title,
	"releaseYear",
	"language",
	rating
)VALUES(
	'Chamber Italian',
	('2006-01-16'),
	'EN',
	'NC-17'
);
INSERT INTO "movieList" (	
	title,
	"releaseYear",
	"language",
	rating
)VALUES(
	'Grosse Wonderful',
	('2006-01-30'),
	'EN',
	'PG-13'
);
INSERT INTO "movieList" (	
	title,
	"releaseYear",
	"language",
	rating
)VALUES(
	'Ace Goldfinger',
	('2006-5-10'),
	'EN',
	'PG-13'
);
INSERT INTO "movieList" (	
	title,
	"releaseYear",
	"language",
	rating
)VALUES(
	'Agent Truman',
	('2006-08-17'),
	'EN',
	'PG-13'
);
INSERT INTO "movieList" (	
	title,
	"releaseYear",
	"language",
	rating
)VALUES(
	'Academy Dinosaur',
	('2006-11-10'),
	'EN',
	'NC-17'
);
INSERT INTO "movieList" (	
	title,
	"releaseYear",
	"language",
	rating
)VALUES(
	'Airport Pollock',
	('2006-05-07'),
	'EN',
	'PG'
);
--
INSERT INTO ticket (	
	"startTime",
	price,
	"idMovie"
)VALUES(
	('10:55'),
	20.99,
	1
);
INSERT INTO ticket (	
	"startTime",
	price,
	"idMovie"
)VALUES(
	('10:55'),
	20.99,
	1
);
INSERT INTO ticket (	
	"startTime",
	price,
	"idMovie"
)VALUES(
	('02:25'),
	15.99,
	2
);
INSERT INTO ticket (	
	"startTime",
	price,
	"idMovie"
)VALUES(
	('02:25'),
	15.99,
	2
);
INSERT INTO ticket (	
	"startTime",
	price,
	"idMovie"
)VALUES(
	('02:25'),
	15.99,
	2
);
INSERT INTO ticket (	
	"startTime",
	price,
	"idMovie"
)VALUES(
	('10:55'),
	20.99,
	1
);
INSERT INTO quantity (	
	"kitchenQ",
	"ticketQ",
	"idOrderK",
	"idTicket",
	"idOrder"
)VALUES(
	2,
	2,
	2,
	2,
	1
);

INSERT INTO checkout (	
	"orderDate",
	"total",
	"idStaff",
	"idCustomer"
)VALUES(
	('2023-01-25'),
	60.99,
	2,
	5
);

SELECT *
FROM staff;
FROM customer;
FROM kitchen;
FROM "movieList";
FROM ticket;
FROM checkout;
FROM quantity;


