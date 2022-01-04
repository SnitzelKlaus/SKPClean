USE master;

DROP DATABASE SKPClean;

CREATE DATABASE SKPClean;

go
USE SKPClean;
go



CREATE TABLE Department
(
Id INT IDENTITY PRIMARY KEY NOT NULL,
Name varchar(100)
);



INSERT INTO Department(Name) VALUES ('SKP Vordingborg')
INSERT INTO Department(Name) VALUES ('SKP Ringsted')
INSERT INTO Department(Name) VALUES ('SKP Slagelse')
INSERT INTO Department(Name) VALUES ('SKP Roskilde')



CREATE TABLE Staff
(
Id INT IDENTITY PRIMARY KEY NOT NULL,
Name varchar(100),
DepartmentId INT

FOREIGN KEY (DepartmentId) REFERENCES Department (Id) ON UPDATE CASCADE ON DELETE CASCADE
);



INSERT INTO Staff(Name, DepartmentId) VALUES ('Ho Lee Fuk', 1)
INSERT INTO Staff(Name, DepartmentId) VALUES ('Klaus Snitzel', 1)
INSERT INTO Staff(Name, DepartmentId) VALUES ('Birthe Hansen', 2)
INSERT INTO Staff(Name, DepartmentId) VALUES ('Søren Brandt', 2)
INSERT INTO Staff(Name, DepartmentId) VALUES ('Ole Jeppersen', 3)
INSERT INTO Staff(Name, DepartmentId) VALUES ('Eli Nygaard', 3)
INSERT INTO Staff(Name, DepartmentId) VALUES ('Klaus Hansen', 4)
INSERT INTO Staff(Name, DepartmentId) VALUES ('Jesper Midgaard', 4)

 

CREATE TABLE Room
(
Id INT IDENTITY PRIMARY KEY NOT NULL,
Name varchar(100),
DepartmentId INT

FOREIGN KEY (DepartmentId) REFERENCES Department (Id) ON UPDATE CASCADE ON DELETE CASCADE
);



INSERT INTO Room(Name, DepartmentId) VALUES ('Kontor', 1)
INSERT INTO Room(Name, DepartmentId) VALUES ('Kantine', 1)
INSERT INTO Room(Name, DepartmentId) VALUES ('Rum 1', 1)
INSERT INTO Room(Name, DepartmentId) VALUES ('Rum 2', 1)
INSERT INTO Room(Name, DepartmentId) VALUES ('Rum 3', 1)
INSERT INTO Room(Name, DepartmentId) VALUES ('Kontor', 2)
INSERT INTO Room(Name, DepartmentId) VALUES ('Kantine', 2)
INSERT INTO Room(Name, DepartmentId) VALUES ('Rum 1', 2)
INSERT INTO Room(Name, DepartmentId) VALUES ('Rum 2', 2)
INSERT INTO Room(Name, DepartmentId) VALUES ('Rum 3', 2)
INSERT INTO Room(Name, DepartmentId) VALUES ('Kontor', 3)
INSERT INTO Room(Name, DepartmentId) VALUES ('Kantine', 3)
INSERT INTO Room(Name, DepartmentId) VALUES ('Rum 1', 3)
INSERT INTO Room(Name, DepartmentId) VALUES ('Rum 2', 3)
INSERT INTO Room(Name, DepartmentId) VALUES ('Rum 3', 3)
INSERT INTO Room(Name, DepartmentId) VALUES ('Rum Kontor', 4)
INSERT INTO Room(Name, DepartmentId) VALUES ('Rum Kantine', 4)
INSERT INTO Room(Name, DepartmentId) VALUES ('Rum 1', 4)
INSERT INTO Room(Name, DepartmentId) VALUES ('Rum 2', 4)
INSERT INTO Room(Name, DepartmentId) VALUES ('Rum 3', 4)



CREATE TABLE Item
(
Id INT IDENTITY PRIMARY KEY NOT NULL,
Name varchar(100),
CleaningInterval INT,
RoomId int,

FOREIGN KEY (RoomId) REFERENCES Room (Id) ON UPDATE CASCADE ON DELETE CASCADE
);



INSERT INTO Item(Name, CleaningInterval, RoomId) VALUES ('Desk', 3, 1)
INSERT INTO Item(Name, CleaningInterval, RoomId) VALUES ('Desk', 3, 2)
INSERT INTO Item(Name, CleaningInterval, RoomId) VALUES ('Desk', 3, 3)
INSERT INTO Item(Name, CleaningInterval, RoomId) VALUES ('Desk', 3, 4)
INSERT INTO Item(Name, CleaningInterval, RoomId) VALUES ('Desk', 3, 5)
INSERT INTO Item(Name, CleaningInterval, RoomId) VALUES ('Desk', 3, 6)
INSERT INTO Item(Name, CleaningInterval, RoomId) VALUES ('Desk', 3, 7)
INSERT INTO Item(Name, CleaningInterval, RoomId) VALUES ('Desk', 3, 8)
INSERT INTO Item(Name, CleaningInterval, RoomId) VALUES ('Desk', 3, 9)
INSERT INTO Item(Name, CleaningInterval, RoomId) VALUES ('Desk', 3, 10)
INSERT INTO Item(Name, CleaningInterval, RoomId) VALUES ('Desk', 3, 11)
INSERT INTO Item(Name, CleaningInterval, RoomId) VALUES ('Desk', 3, 12)
INSERT INTO Item(Name, CleaningInterval, RoomId) VALUES ('Desk', 3, 13)
INSERT INTO Item(Name, CleaningInterval, RoomId) VALUES ('Desk', 3, 14)
INSERT INTO Item(Name, CleaningInterval, RoomId) VALUES ('Desk', 3, 15)
INSERT INTO Item(Name, CleaningInterval, RoomId) VALUES ('Desk', 3, 16)
INSERT INTO Item(Name, CleaningInterval, RoomId) VALUES ('Desk', 3, 17)
INSERT INTO Item(Name, CleaningInterval, RoomId) VALUES ('Desk', 3, 18)
INSERT INTO Item(Name, CleaningInterval, RoomId) VALUES ('Desk', 3, 19)
INSERT INTO Item(Name, CleaningInterval, RoomId) VALUES ('Desk', 3, 20)

INSERT INTO Item(Name, CleaningInterval, RoomId) VALUES ('Floor', 5, 1)
INSERT INTO Item(Name, CleaningInterval, RoomId) VALUES ('Floor', 5, 2)
INSERT INTO Item(Name, CleaningInterval, RoomId) VALUES ('Floor', 5, 3)
INSERT INTO Item(Name, CleaningInterval, RoomId) VALUES ('Floor', 5, 4)
INSERT INTO Item(Name, CleaningInterval, RoomId) VALUES ('Floor', 5, 5)
INSERT INTO Item(Name, CleaningInterval, RoomId) VALUES ('Floor', 5, 6)
INSERT INTO Item(Name, CleaningInterval, RoomId) VALUES ('Floor', 5, 7)
INSERT INTO Item(Name, CleaningInterval, RoomId) VALUES ('Floor', 5, 8)
INSERT INTO Item(Name, CleaningInterval, RoomId) VALUES ('Floor', 5, 9)
INSERT INTO Item(Name, CleaningInterval, RoomId) VALUES ('Floor', 5, 10)
INSERT INTO Item(Name, CleaningInterval, RoomId) VALUES ('Floor', 5, 11)
INSERT INTO Item(Name, CleaningInterval, RoomId) VALUES ('Floor', 5, 12)
INSERT INTO Item(Name, CleaningInterval, RoomId) VALUES ('Floor', 5, 13)
INSERT INTO Item(Name, CleaningInterval, RoomId) VALUES ('Floor', 5, 14)
INSERT INTO Item(Name, CleaningInterval, RoomId) VALUES ('Floor', 5, 15)
INSERT INTO Item(Name, CleaningInterval, RoomId) VALUES ('Floor', 5, 16)
INSERT INTO Item(Name, CleaningInterval, RoomId) VALUES ('Floor', 5, 17)
INSERT INTO Item(Name, CleaningInterval, RoomId) VALUES ('Floor', 5, 18)
INSERT INTO Item(Name, CleaningInterval, RoomId) VALUES ('Floor', 5, 19)
INSERT INTO Item(Name, CleaningInterval, RoomId) VALUES ('Floor', 5, 20)

INSERT INTO Item(Name, CleaningInterval, RoomId) VALUES ('Chair', 4, 1)
INSERT INTO Item(Name, CleaningInterval, RoomId) VALUES ('Chair', 4, 2)
INSERT INTO Item(Name, CleaningInterval, RoomId) VALUES ('Chair', 4, 3)
INSERT INTO Item(Name, CleaningInterval, RoomId) VALUES ('Chair', 4, 4)
INSERT INTO Item(Name, CleaningInterval, RoomId) VALUES ('Chair', 4, 5)
INSERT INTO Item(Name, CleaningInterval, RoomId) VALUES ('Chair', 4, 6)
INSERT INTO Item(Name, CleaningInterval, RoomId) VALUES ('Chair', 4, 7)
INSERT INTO Item(Name, CleaningInterval, RoomId) VALUES ('Chair', 4, 8)
INSERT INTO Item(Name, CleaningInterval, RoomId) VALUES ('Chair', 4, 9)
INSERT INTO Item(Name, CleaningInterval, RoomId) VALUES ('Chair', 4, 10)
INSERT INTO Item(Name, CleaningInterval, RoomId) VALUES ('Chair', 4, 11)
INSERT INTO Item(Name, CleaningInterval, RoomId) VALUES ('Chair', 4, 12)
INSERT INTO Item(Name, CleaningInterval, RoomId) VALUES ('Chair', 4, 13)
INSERT INTO Item(Name, CleaningInterval, RoomId) VALUES ('Chair', 4, 14)
INSERT INTO Item(Name, CleaningInterval, RoomId) VALUES ('Chair', 4, 15)
INSERT INTO Item(Name, CleaningInterval, RoomId) VALUES ('Chair', 4, 16)
INSERT INTO Item(Name, CleaningInterval, RoomId) VALUES ('Chair', 4, 17)
INSERT INTO Item(Name, CleaningInterval, RoomId) VALUES ('Chair', 4, 18)
INSERT INTO Item(Name, CleaningInterval, RoomId) VALUES ('Chair', 4, 19)
INSERT INTO Item(Name, CleaningInterval, RoomId) VALUES ('Chair', 4, 20)



CREATE TABLE Cleaning
(
Id INT IDENTITY PRIMARY KEY NOT NULL,
Date DATE,
Intensity INT,
StaffId INT,
ItemId INT,

FOREIGN KEY (StaffId) REFERENCES Staff (Id) ON UPDATE CASCADE ON DELETE CASCADE,
FOREIGN KEY (ItemId) REFERENCES Item (Id) ON UPDATE CASCADE ON DELETE CASCADE
);



CREATE TABLE Message
(
Id INT IDENTITY PRIMARY KEY NOT NULL,
Date DATE,
Content VARCHAR(500),
StaffId INT,
DepartmentId INT

FOREIGN KEY (StaffId) REFERENCES Staff (Id) ON UPDATE CASCADE ON DELETE CASCADE,
FOREIGN KEY (DepartmentId) REFERENCES Department (Id) ON UPDATE CASCADE ON DELETE CASCADE
);



CREATE TABLE Login
(
Id INT IDENTITY PRIMARY KEY NOT NULL,
Name VARCHAR(100),
Password VARCHAR(256),
StaffId INT,

FOREIGN KEY (StaffId) REFERENCES Staff (Id) ON UPDATE CASCADE ON DELETE CASCADE
);



CREATE TABLE Admin
(
Id INT IDENTITY PRIMARY KEY NOT NULL,
StaffId INT,

FOREIGN KEY (StaffId) REFERENCES Staff (Id) ON UPDATE CASCADE ON DELETE CASCADE
);



INSERT INTO Admin(StaffId) VALUES (1)
INSERT INTO Admin(StaffId) VALUES (2)
INSERT INTO Admin(StaffId) VALUES (3)
INSERT INTO Admin(StaffId) VALUES (4)
INSERT INTO Admin(StaffId) VALUES (5)
INSERT INTO Admin(StaffId) VALUES (6)
INSERT INTO Admin(StaffId) VALUES (7)
INSERT INTO Admin(StaffId) VALUES (8)