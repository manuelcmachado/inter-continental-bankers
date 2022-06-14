CREATE TABLE [Employee].[Departments] (
    [DepartmentID]   INT            IDENTITY (1, 1) NOT NULL,
    [DepartmentCode] CHAR (3)       DEFAULT ('MKT') NOT NULL,
    [DepartmentName] NVARCHAR (255) DEFAULT ('Marketing') NOT NULL,
    [DateInserted]   DATETIME2 (7)  NOT NULL,
    CONSTRAINT [Departments_PK] PRIMARY KEY CLUSTERED ([DepartmentID] ASC)
);

