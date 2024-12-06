  CREATE DATABASE TaskManagerDB;
   GO

   USE TaskManagerDB;
   GO

   CREATE TABLE Users (
       Id INT IDENTITY(1,1) PRIMARY KEY,
       Username NVARCHAR(50) NOT NULL,
       Email NVARCHAR(100) NOT NULL,
       PasswordHash NVARCHAR(MAX) NOT NULL
   );

   CREATE TABLE Tasks (
       Id INT IDENTITY(1,1) PRIMARY KEY,
       Title NVARCHAR(100) NOT NULL,
       Description NVARCHAR(MAX),
       DueDate DATETIME NOT NULL,
       IsCompleted BIT NOT NULL DEFAULT 0,
       UserId INT NOT NULL,
       FOREIGN KEY (UserId) REFERENCES Users(Id)
   );