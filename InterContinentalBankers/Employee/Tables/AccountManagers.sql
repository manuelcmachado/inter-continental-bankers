CREATE TABLE [Employee].[AccountManagers] (
    [AccountManagerID]          INT            IDENTITY (1, 1) NOT NULL,
    [EmployeeID]                INT            NOT NULL,
    [AccountManagerPhoneNumber] NVARCHAR (25)  NOT NULL,
    [AccountManagerCellPhone]   NVARCHAR (255) NOT NULL,
    [AccountManagerEmail]       NVARCHAR (255) NULL,
    [DateInserted]              DATETIME2 (7)  NOT NULL,
    CONSTRAINT [AccountManager_PK] PRIMARY KEY CLUSTERED ([AccountManagerID] ASC),
    CONSTRAINT [FKAccountMan989347] FOREIGN KEY ([EmployeeID]) REFERENCES [Employee].[Employees] ([EmployeeID])
);

