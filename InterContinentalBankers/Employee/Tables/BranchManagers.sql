CREATE TABLE [Employee].[BranchManagers] (
    [BranchManagerID]          INT            IDENTITY (1, 1) NOT NULL,
    [EmployeeID]               INT            NOT NULL,
    [BranchManagePhoneNumber]  NVARCHAR (25)  NOT NULL,
    [BranchManageCellPhone]    NVARCHAR (25)  NOT NULL,
    [BranchManageManagerEmail] NVARCHAR (255) NULL,
    [DateInserted]             DATETIME2 (7)  NOT NULL,
    CONSTRAINT [BranchManager_PK] PRIMARY KEY CLUSTERED ([BranchManagerID] ASC),
    CONSTRAINT [FKBranchMana722846] FOREIGN KEY ([EmployeeID]) REFERENCES [Employee].[Employees] ([EmployeeID])
);

