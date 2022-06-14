CREATE TABLE [Banking].[Accounts_BankEntities] (
    [AccountsAccountID]    INT NOT NULL,
    [BankEntitiesEntityID] INT NOT NULL,
    PRIMARY KEY CLUSTERED ([AccountsAccountID] ASC, [BankEntitiesEntityID] ASC),
    CONSTRAINT [FKAccounts_B379641] FOREIGN KEY ([BankEntitiesEntityID]) REFERENCES [Person].[BankEntities] ([EntityID]),
    CONSTRAINT [FKAccounts_B708768] FOREIGN KEY ([AccountsAccountID]) REFERENCES [Banking].[Accounts] ([AccountID])
);

