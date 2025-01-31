CREATE TABLE Settings (
    SettingId INT IDENTITY(1000,1) PRIMARY KEY,
    SettingGroup NVARCHAR(100) NOT NULL,
    SettingSubGroup NVARCHAR(100) NULL,
    SettingName NVARCHAR(100) NOT NULL,
    SettingValue NVARCHAR(100) NOT NULL,
    IsSystemSetting BIT NOT NULL,
    Description NVARCHAR(255) NULL,
    UserCreated INT NOT NULL,
    UserModified INT NULL,
    DateCreated DATETIME NOT NULL DEFAULT GETDATE(),
    DateModified DATETIME NULL
);