USE master;

DROP DATABASE SKPClean;

CREATE DATABASE SKPClean;

go
USE SKPClean;
go



CREATE TABLE Department
(
Id INT IDENTITY PRIMARY KEY NOT NULL,
Name VARCHAR(128) NULL
);



INSERT INTO Department(Name) VALUES ('SKP Vordingborg')
INSERT INTO Department(Name) VALUES ('SKP Ringsted')
INSERT INTO Department(Name) VALUES ('SKP Slagelse')
INSERT INTO Department(Name) VALUES ('SKP Roskilde')



CREATE TABLE Roles
(
Id INT IDENTITY PRIMARY KEY NOT NULL,
Name VARCHAR(128) NULL
);



INSERT INTO Roles(Name) VALUES ('Executive')
INSERT INTO Roles(Name) VALUES ('Manager')
INSERT INTO Roles(Name) VALUES ('CO-Manager')
INSERT INTO Roles(Name) VALUES ('Worker')
INSERT INTO Roles(Name) VALUES ('Guest')



CREATE TABLE Users
(
Id INT IDENTITY PRIMARY KEY NOT NULL,
Name VARCHAR(128) NOT NULL,
UserName VARCHAR(128) NOT NULL,
Password VARCHAR(512) NOT NULL,
Salt VARCHAR(128) NOT NULL,
IsActivated BIT NULL,
ActivatedDateTime DATETIME NULL,
DeactivatedDateTime DATETIME NULL,
IsLocked BIT NULL,
LockedDateTime DATETIME NULL,

RoleId INT NULL,
DepartmentId INT NULL

FOREIGN KEY (RoleId) REFERENCES Roles (Id),
FOREIGN KEY (DepartmentId) REFERENCES Department (Id)
);



INSERT INTO Users(Name, UserName, Password, Salt, RoleId, IsActivated, IsLocked) VALUES ('System', 'AI', 'Code0!', 'Salt', 1, 0, 0)
INSERT INTO Users(Name, UserName, Password, Salt, RoleId, DepartmentId, IsActivated, IsLocked) VALUES ('Benjamin Hoffmeyer', 'WorldLeadr69', 'Code1!', 'Salt', 1, 1, 0, 0)
INSERT INTO Users(Name, UserName, Password, Salt, RoleId, DepartmentId, IsActivated, IsLocked) VALUES ('Micheal Scott', 'MiSc', 'Code2!', 'Salt', 2, 1, 0, 0)
INSERT INTO Users(Name, UserName, Password, Salt, RoleId, DepartmentId, IsActivated, IsLocked) VALUES ('Jim Halpert', 'JiHa', 'Code3!', 'Salt', 2, 2, 0, 0)
INSERT INTO Users(Name, UserName, Password, Salt, RoleId, DepartmentId, IsActivated, IsLocked) VALUES ('Pam Beesly', 'PaBe', 'Code4!', 'Salt', 2, 2, 0, 0)
INSERT INTO Users(Name, UserName, Password, Salt, RoleId, DepartmentId, IsActivated, IsLocked) VALUES ('Dwight Schrute', 'DwSc', 'Code5!', 'Salt', 2, 3, 0, 0)
INSERT INTO Users(Name, UserName, Password, Salt, RoleId, DepartmentId, IsActivated, IsLocked) VALUES ('Erin Hannon', 'ErHa', 'Code6!', 'Salt', 2, 3, 0, 0)
INSERT INTO Users(Name, UserName, Password, Salt, RoleId, DepartmentId, IsActivated, IsLocked) VALUES ('Angela Martin', 'AnMa', 'Code7!', 'Salt', 2, 4, 0, 0)
INSERT INTO Users(Name, UserName, Password, Salt, RoleId, DepartmentId, IsActivated, IsLocked) VALUES ('Kelly Kapoor', 'KeKa', 'Code8!', 'Salt', 2, 4, 0, 0)
INSERT INTO Users(Name, UserName, Password, Salt, RoleId, DepartmentId, IsActivated, IsLocked) VALUES ('Creed Bratton', 'CrBr', 'Code9!', 'Salt', 2, 4, 0, 0)
INSERT INTO Users(Name, UserName, Password, Salt, RoleId, DepartmentId, IsActivated, IsLocked) VALUES ('Ryan Howard', 'RyHo', 'Code10!', 'Salt', 2, 4, 0, 0)

INSERT INTO Users(Name, UserName, Password, Salt, RoleId, DepartmentId, IsActivated, IsLocked) VALUES ('Kevin Malone', 'KeMa', 'Code11!', 'Salt', 2, 1, 0, 0)
INSERT INTO Users(Name, UserName, Password, Salt, RoleId, DepartmentId, IsActivated, IsLocked) VALUES ('Andy Bernard', 'AnBe', 'Code12!', 'Salt', 4, 1, 0, 0)
INSERT INTO Users(Name, UserName, Password, Salt, RoleId, DepartmentId, IsActivated, IsLocked) VALUES ('Holly Flax', 'HoFl', 'Code13!', 'Salt', 4, 2, 0, 0)
INSERT INTO Users(Name, UserName, Password, Salt, RoleId, DepartmentId, IsActivated, IsLocked) VALUES ('Oscar Martinez', 'OsMa', 'Code14!', 'Salt', 4, 2, 0, 0)
INSERT INTO Users(Name, UserName, Password, Salt, RoleId, DepartmentId, IsActivated, IsLocked) VALUES ('Phyllis Lapin-Vance', 'PhLa', 'Code15!', 'Salt', 4, 3, 0, 0)
INSERT INTO Users(Name, UserName, Password, Salt, RoleId, DepartmentId, IsActivated, IsLocked) VALUES ('Darryl Philbin', 'DaPh', 'Code16!', 'Salt', 4, 3, 0, 0)
INSERT INTO Users(Name, UserName, Password, Salt, RoleId, DepartmentId, IsActivated, IsLocked) VALUES ('Stanley Hudson', 'StHu', 'Code17!', 'Salt', 4, 4, 0, 0)
INSERT INTO Users(Name, UserName, Password, Salt, RoleId, DepartmentId, IsActivated, IsLocked) VALUES ('Meredith Palmer', 'MePa', 'Code18!', 'Salt', 4, 4, 0, 0)
INSERT INTO Users(Name, UserName, Password, Salt, RoleId, DepartmentId, IsActivated, IsLocked) VALUES ('Gabe Lewish', 'GaLe', 'Code19!', 'Salt', 4, 4, 0, 0)
INSERT INTO Users(Name, UserName, Password, Salt, RoleId, DepartmentId, IsActivated, IsLocked) VALUES ('Mose', 'Mo', 'Code20!', 'Salt', 4, 4, 0, 0)
INSERT INTO Users(Name, UserName, Password, Salt, RoleId, DepartmentId, IsActivated, IsLocked) VALUES ('Roy Anderson', 'RoAn', 'Code21!', 'Salt', 5, 1, 0, 0)

 

CREATE TABLE Room
(
Id INT IDENTITY PRIMARY KEY NOT NULL,
Name varchar(128) NULL,

DepartmentId INT NOT NULL

FOREIGN KEY (DepartmentId) REFERENCES Department (Id) ON DELETE CASCADE
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
Name varchar(128) NULL,
CleaningInterval INT NULL,

RoomId int NOT NULL,

FOREIGN KEY (RoomId) REFERENCES Room (Id) ON DELETE CASCADE
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
CleaningDateTime DATETIME NOT NULL,
Intensity INT NULL,

UserId INT NOT NULL,
ItemId INT NOT NULL,

FOREIGN KEY (UserId) REFERENCES Users (Id),
FOREIGN KEY (ItemId) REFERENCES Item (Id) ON DELETE CASCADE
);



CREATE TABLE Note
(
Id INT IDENTITY PRIMARY KEY NOT NULL,
NoteDateTime DATETIME NOT NULL,
Content VARCHAR(512) NULL,

UserId INT NOT NULL,
DepartmentId INT NOT NULL

FOREIGN KEY (UserId) REFERENCES Users (Id),
FOREIGN KEY (DepartmentId) REFERENCES Department (Id) ON DELETE CASCADE
);



CREATE TABLE Task
(
Id INT IDENTITY PRIMARY KEY NOT NULL,
Name VARCHAR(128) NULL
);


															-- Id's

INSERT INTO Task(Name) VALUES ('Department_Created')		-- 1
INSERT INTO Task(Name) VALUES ('Department_Updated')		-- 2
INSERT INTO Task(Name) VALUES ('Department_Deleted')		-- 3

INSERT INTO Task(Name) VALUES ('Role_Created')				-- 4
INSERT INTO Task(Name) VALUES ('Role_Updated')				-- 5
INSERT INTO Task(Name) VALUES ('Role_Deleted')				-- 6

INSERT INTO Task(Name) VALUES ('Room_Created')				-- 7
INSERT INTO Task(Name) VALUES ('Room_Updated')				-- 8
INSERT INTO Task(Name) VALUES ('Room_Deleted')				-- 9

INSERT INTO Task(Name) VALUES ('Item_Created')				-- 10
INSERT INTO Task(Name) VALUES ('Item_Updated')				-- 11
INSERT INTO Task(Name) VALUES ('Item_Deleted')				-- 12

INSERT INTO Task(Name) VALUES ('Cleaning_Created')			-- 13
INSERT INTO Task(Name) VALUES ('Cleaning_Updated')			-- 14
INSERT INTO Task(Name) VALUES ('Cleaning_Deleted')			-- 15

INSERT INTO Task(Name) VALUES ('Note_Created')				-- 16
INSERT INTO Task(Name) VALUES ('Note_Updated')				-- 17
INSERT INTO Task(Name) VALUES ('Note_Deleted')				-- 18

INSERT INTO Task(Name) VALUES ('User_Created')				-- 19
INSERT INTO Task(Name) VALUES ('User_Updated')				-- 20
INSERT INTO Task(Name) VALUES ('User_Deleted')				-- 21

INSERT INTO Task(Name) VALUES ('User_Locked')				-- 22
INSERT INTO Task(Name) VALUES ('User_Unlocked')				-- 23
INSERT INTO Task(Name) VALUES ('User_Activated')			-- 24
INSERT INTO Task(Name) VALUES ('User_Deactivated')			-- 25

INSERT INTO Task(Name) VALUES ('User_Error')				-- 26

INSERT INTO Task(Name) VALUES ('GetAll_Departments')		-- 26
INSERT INTO Task(Name) VALUES ('Get_Department')			-- 27

INSERT INTO Task(Name) VALUES ('GetAll_Roles')				-- 28
INSERT INTO Task(Name) VALUES ('Get_Role')					-- 29

INSERT INTO Task(Name) VALUES ('GetAll_Rooms')				-- 30
INSERT INTO Task(Name) VALUES ('Get_Room')					-- 31

INSERT INTO Task(Name) VALUES ('GetAll_Items')				-- 32
INSERT INTO Task(Name) VALUES ('Get_Item')					-- 33

INSERT INTO Task(Name) VALUES ('GetAll_Cleanings')			-- 34
INSERT INTO Task(Name) VALUES ('Get_Cleaning')				-- 35

INSERT INTO Task(Name) VALUES ('GetAll_Notes')				-- 36
INSERT INTO Task(Name) VALUES ('Get_Note')					-- 37

INSERT INTO Task(Name) VALUES ('GetAll_Users')				-- 38
INSERT INTO Task(Name) VALUES ('GetAllDepartment_Users')	-- 39
INSERT INTO Task(Name) VALUES ('Get_User')					-- 40



CREATE TABLE EventLog
(
Id INT IDENTITY PRIMARY KEY NOT NULL,
EventDateTime DATETIME NOT NULL,
Content VARCHAR(512) NULL,

UserId INT NOT NULL,
TaskId INT NOT NULL

FOREIGN KEY (UserId) REFERENCES Users (Id) ON DELETE NO ACTION,
FOREIGN KEY (TaskId) REFERENCES Task (Id) ON DELETE NO ACTION
);



