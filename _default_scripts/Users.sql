CREATE TABLE Users (
    UserId INT IDENTITY(1000,1) PRIMARY KEY,
    FirstName NVARCHAR(100) NOT NULL,
    MiddleName NVARCHAR(100) NULL,
    LastName NVARCHAR(100) NOT NULL,
    Email NVARCHAR(255) UNIQUE NOT NULL,
    RoleId INT NOT NULL,
    LastLogin DATETIME NULL,
    Enabled BIT NOT NULL DEFAULT 1,
    UserCreated INT NOT NULL,
    UserModified INT NULL,
    DateCreated DATETIME NOT NULL DEFAULT GETDATE(),
    DateModified DATETIME NULL,
    
    FOREIGN KEY (RoleId) REFERENCES Roles(RoleId),
    FOREIGN KEY (UserCreated) REFERENCES Users(UserId),
    FOREIGN KEY (UserModified) REFERENCES Users(UserId)
);