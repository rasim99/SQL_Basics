CREATE DATABASE MyApp
USE MyApp
  ---------- CREATE USERS TABLE ----------------------
CREATE TABLE Users(
Id INT PRIMARY KEY IDENTITY(1,1),
[Name] NVARCHAR(255) NOT NULL,
Surname NVARCHAR(200) NOT NULL,
Email NVARCHAR(55) UNIQUE,
RegistrationDate DATE DEFAULT GETDATE() CHECK(RegistrationDate<=GETDATE()),
ContactNumber VARCHAR(20) DEFAULT '+9940000000',
Age INT CHECK(Age>18),
Address NVARCHAR(100)
)

------------- INSERT Data To Users Table -------
INSERT INTO Users VALUES 
('Sahib','Sahibzade','s_sahib@gmail.com','2024.06.15','+994123456789',20,'Sacramneto California USA'),
('Mahir','elizade','m.elizade@GMAIL.com','2023.06.15','+9941723456789',20,'Moscow  Russia'),
('Lora','Stevleno','lorastevleno@GMAIL.com','2024.06.18','+9941345678',20,'Florida  USA'),
('Kevin','Luis','l.kevin@GMAIL.com','2022.12.25','+99412985456789',20,'Los-Angeles CALIFORNIA USA'),
('Kristina','Evo','kk.evo@GMAIL.com','2024.05.15','+99412783456789',20,'Milan Italia ')
 

 INSERT INTO Users(Name,Surname,Email,ContactNumber,Age,Address) VALUES 
(
'Loreeeeem',
'Ipsuuuum',
'S.rerererer@GMAIL.COM',
'+994123456789',
23,
'SACRAMNETO CALIFORNIA USA'
)

 ------ Create Categories Table ----

 CREATE TABLE Categories
 (
 Id INT  PRIMARY KEY IDENTITY(1,1),
 [Name] NVARCHAR(122) NOT NULL,
 Slug NVARCHAR(100) UNIQUE,
 CreatedAt DATETIME DEFAULT GETDATE()   CHECK(CreatedAt<=GETDATE()),
 ContactNumber VARCHAR(20) DEFAULT '+9940000000',
 IsActive  bit
 )

 ------------- INSERT Data To Categories Table -------
 INSERT INTO Categories VALUES
 ('Phone','phones',DEFAULT,'99455566778899',1),
 ('Motobike','Vechiles','2020.02.02','99466644772200',0),
 ('Drink','drink product','2024.04.24','9941001023',1),
 ('photo','gallery','2024.05.15','99455566778899',0)

 ---- SELECT Queries (User/Categories)
SELECT Name  UserName,Surname UserSurname,Email UserEmail FROM Users
SELECT Name  CategoryName,IsActive  FROM Categories

