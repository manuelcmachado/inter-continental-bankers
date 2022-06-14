CREATE TABLE [Employee].[Employees] (
    [EmployeeID]           INT           IDENTITY (1, 1) NOT NULL,
    [FirstName]            NVARCHAR (35) NOT NULL,
    [LastName]             NVARCHAR (50) NOT NULL,
    [HiredDate]            DATETIME2 (0) NOT NULL,
    [DepartmentID]         INT           NOT NULL,
    [RoleID]               INT           NOT NULL,
    [RecordInceptionDate]  DATETIME2 (0) NOT NULL,
    [RecordExpirationDate] DATETIME2 (0) DEFAULT ('9999-12-31 23:59:59') NOT NULL,
    [GenderID]             INT           NOT NULL,
    [BranchID]             INT           NOT NULL,
    [DateInserted]         DATETIME2 (0) NOT NULL,
    CONSTRAINT [Employee_PK] PRIMARY KEY CLUSTERED ([EmployeeID] ASC),
    CONSTRAINT [FKEmployees596317] FOREIGN KEY ([DepartmentID]) REFERENCES [Employee].[Departments] ([DepartmentID]),
    CONSTRAINT [FKEmployees758326] FOREIGN KEY ([GenderID]) REFERENCES [Person].[Genders] ([GenderID]),
    CONSTRAINT [FKEmployees832817] FOREIGN KEY ([RoleID]) REFERENCES [Employee].[Roles] ([RoleID])
);

