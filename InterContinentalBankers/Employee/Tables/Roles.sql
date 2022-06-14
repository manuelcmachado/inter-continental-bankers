CREATE TABLE [Employee].[Roles] (
    [RoleID]          INT            IDENTITY (1, 1) NOT NULL,
    [RoleCode]        CHAR (3)       DEFAULT ('CLK') NOT NULL,
    [RoleDescription] NVARCHAR (255) DEFAULT ('Bank Clerk') NOT NULL,
    [DateInserted]    DATETIME2 (7)  NOT NULL,
    CONSTRAINT [Role_PK] PRIMARY KEY CLUSTERED ([RoleID] ASC)
);

