CREATE TABLE Roles (
    RoleId INT IDENTITY(1,1) PRIMARY KEY,
    RoleName NVARCHAR(100) NOT NULL,
    Description NVARCHAR(255) NULL,
    UserCreated INT NOT NULL,
    UserModified INT NULL,
    DateCreated DATETIME NOT NULL DEFAULT GETDATE(),
    DateModified DATETIME NULL,
    
    FOREIGN KEY (UserCreated) REFERENCES Users(UserId),
    FOREIGN KEY (UserModified) REFERENCES Users(UserId)
);