
CREATE  DATABASE Pos
GO

USE Pos
GO

CREATE  TABLE dbo.ModuleType(
 Id INT IDENTITY(1,1) PRIMARY KEY
,Name VARCHAR(50) NOT NULL
,Description VARCHAR(200)
)
GO

CREATE  TABLE dbo.Module(
 Id INT IDENTITY(1,1) PRIMARY KEY
,ModTypeId INT FOREIGN KEY REFERENCES  ModuleType(Id)
,ParentId INT FOREIGN KEY REFERENCES  Module(Id) DEFAULT(NULL)
,Name VARCHAR(50) NOT NULL
,Description VARCHAR(200)
,Path VARCHAR(500)
,Active BIT
)
GO

CREATE TABLE dbo.Profile(
 Id INT IDENTITY(1,1) PRIMARY KEY
,Name VARCHAR(50) NOT NULL
,Description VARCHAR(200)
,Active BIT
)
GO

CREATE TABLE dbo.ModulesByProfiles(
 Id INT IDENTITY(1,1) PRIMARY KEY
,ModuleId INT FOREIGN KEY REFERENCES  Module(Id) 
,ProfileId INT FOREIGN KEY REFERENCES Profile(Id)
,CanRead BIT
,CanWrite BIT
)
GO

CREATE TABLE dbo.DocumentType(
 Id INT IDENTITY(1,1) PRIMARY KEY
,Name VARCHAR(50) NOT NULL
,Description VARCHAR(200) 
,Active BIT
)
GO


CREATE TABLE dbo.Deparment(
Id INT IDENTITY(1,1) PRIMARY KEY
,Name VARCHAR(50) NOT NULL
,Description VARCHAR(200) 
,Active BIT
)

CREATE TABLE dbo.City(
 Id INT IDENTITY(1,1) PRIMARY KEY
,DepartmentId INT FOREIGN KEY REFERENCES Deparment(Id)
,Name VARCHAR(50) NOT NULL
,Description VARCHAR(200) 
,Active BIT
)

CREATE TABLE dbo.Person(
 Id INT IDENTITY(1,1) PRIMARY KEY
,DocTypeId INT FOREIGN KEY REFERENCES DocumentType(Id)
,CityId INT FOREIGN KEY REFERENCES City(Id)
,Document VARCHAR(15) NOT NULL
,FirstName VARCHAR(50) NOT NULL
,LastName VARCHAR(50)
,DateBird DATE 
,Gender VARCHAR(1)
,Address VARCHAR(100)
,PhoneNumber VARCHAR(12)
,CellphoneNumber VARCHAR(12)
,CreationDate DATETIME DEFAULT(GETDATE())
)
GO

CREATE TABLE dbo.Employee(
 Id INT IDENTITY(1,1) PRIMARY KEY
,PersonId INT FOREIGN KEY REFERENCES Person(Id)
,Active BIT
)
GO

CREATE TABLE dbo.UserAccount(
 Id INT IDENTITY(1,1) PRIMARY KEY
,EmployeeId INT FOREIGN KEY REFERENCES Employee(Id)
,ProfileId INT FOREIGN KEY REFERENCES Profile(Id)
,UserName VARCHAR(50)
,Password VARCHAR(300)
,Active BIT
,CreationDate DATETIME
)
GO

CREATE TABLE dbo.Customer (
 Id INT IDENTITY(1,1) PRIMARY KEY
,PersonId INT FOREIGN KEY REFERENCES Person(Id)
,Active BIT
)
GO

CREATE TABLE dbo.Product(
 Id INT IDENTITY(1,1) PRIMARY KEY
,Name VARCHAR(50)
,Description VARCHAR(250) 
,Price MONEY
,Active BIT
)
GO


CREATE TABLE dbo.Sale(
 Id INT IDENTITY(1,1) PRIMARY KEY
,CustomerId INT FOREIGN KEY REFERENCES Customer(Id)
,EmployeeId INT FOREIGN KEY REFERENCES Employee(Id)
,Total MONEY
,Discount MONEY
,SubTotal MONEY
,Tax MONEY
,Active BIT
)
GO

CREATE  TABLE dbo.SaleDetails(
 Id INT IDENTITY(1,1) PRIMARY KEY
,SaleId INT FOREIGN KEY REFERENCES Sale(Id)
,ProductId INT FOREIGN KEY REFERENCES Product(Id)
,Quantity INT 
,UnitPrice MONEY
,Discount MONEY
,Amount MONEY
)
GO


CREATE  TABLE dbo.PaymentType(
 Id INT IDENTITY(1,1) PRIMARY KEY
,Name VARCHAR(50)
,Description VARCHAR(250) 
,Active BIT
)
GO

CREATE TABLE dbo.SalePayment(
 Id INT IDENTITY(1,1) PRIMARY KEY
,SaleId INT FOREIGN KEY REFERENCES Sale(Id)
,PaymentTypeId INT FOREIGN KEY REFERENCES PaymentType(Id)
,Amount MONEY
)
GO

CREATE TABLE dbo.CountCash(
 Id INT IDENTITY(1,1) PRIMARY KEY
,EmployeeId INT FOREIGN KEY REFERENCES Employee(Id)
,Date DATETIME 
,Base MONEY
,Sales MONEY
,Refunds MONEY
,Total MONEY
)
GO

