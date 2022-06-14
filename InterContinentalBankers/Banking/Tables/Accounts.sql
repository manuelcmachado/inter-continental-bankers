CREATE TABLE [Banking].[Accounts] (
    [AccountID]        INT           IDENTITY (1, 1) NOT NULL,
    [AccountTypeID]    INT           NOT NULL,
    [AcccountNumber]   INT           DEFAULT ((1.)) NOT NULL,
    [RoutingNumber]    INT           NOT NULL,
    [BranchID]         INT           NOT NULL,
    [EntityID]         INT           NOT NULL,
    [AccountManagerID] INT           NOT NULL,
    [CurrencyID]       INT           NOT NULL,
    [ProductID]        INT           NOT NULL,
    [CreationDate]     DATETIME2 (7) NOT NULL,
    [TransactionID]    INT           NOT NULL,
    [AccountStatusID]  INT           NOT NULL,
    [DateInserted]     DATETIME2 (0) NOT NULL,
    CONSTRAINT [Account_PK] PRIMARY KEY CLUSTERED ([AccountID] ASC),
    CONSTRAINT [FKAccounts126862] FOREIGN KEY ([AccountTypeID]) REFERENCES [Banking].[AccountTypes] ([AccountTypeID]),
    CONSTRAINT [FKAccounts217450] FOREIGN KEY ([AccountManagerID]) REFERENCES [Employee].[AccountManagers] ([AccountManagerID]),
    CONSTRAINT [FKAccounts266391] FOREIGN KEY ([AccountStatusID]) REFERENCES [Banking].[AccountStatus] ([AccountStatusID]),
    CONSTRAINT [FKAccounts346037] FOREIGN KEY ([ProductID]) REFERENCES [Banking].[Products] ([ProductID]),
    CONSTRAINT [FKAccounts510828] FOREIGN KEY ([CurrencyID]) REFERENCES [Banking].[Currencies] ([CurrencyID]),
    CONSTRAINT [FKAccounts624173] FOREIGN KEY ([TransactionID]) REFERENCES [Banking].[Transactions] ([TransactionID]),
    CONSTRAINT [FKAccounts794738] FOREIGN KEY ([BranchID]) REFERENCES [Banking].[Branches] ([BranchID]),
    UNIQUE NONCLUSTERED ([RoutingNumber] ASC)
);


GO
CREATE NONCLUSTERED INDEX [Account]
    ON [Banking].[Accounts]([AccountID] ASC, [AcccountNumber] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [Accounts_AcccountNumber]
    ON [Banking].[Accounts]([AcccountNumber] ASC);

