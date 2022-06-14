CREATE TABLE [Banking].[Branches] (
    [BranchID]                      INT            IDENTITY (1, 1) NOT NULL,
    [BranchCode]                    CHAR (5)       NOT NULL,
    [AddressId]                     INT            NOT NULL,
    [BranchName]                    NVARCHAR (255) NOT NULL,
    [BranchPhoneNumber]             NVARCHAR (25)  NOT NULL,
    [BranchManageID]                INT            NOT NULL,
    [BranchManagersBranchManagerID] INT            NOT NULL,
    [DateInserted]                  DATETIME2 (7)  NOT NULL,
    CONSTRAINT [Branches_PK] PRIMARY KEY CLUSTERED ([BranchID] ASC),
    CONSTRAINT [FKBranches836804] FOREIGN KEY ([AddressId]) REFERENCES [Geography].[Addresses] ([AddressID]),
    CONSTRAINT [FKBranches90543] FOREIGN KEY ([BranchManagersBranchManagerID]) REFERENCES [Employee].[BranchManagers] ([BranchManagerID])
);

