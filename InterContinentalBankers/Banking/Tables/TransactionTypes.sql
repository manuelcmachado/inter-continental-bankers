CREATE TABLE [Banking].[TransactionTypes] (
    [TransactionTypeID]          INT            IDENTITY (1, 1) NOT NULL,
    [TransactionType]            CHAR (3)       DEFAULT ('DPS') NOT NULL,
    [TransactionTypeDescription] NVARCHAR (255) DEFAULT ('Money Deposit') NOT NULL,
    [DateInserted]               DATETIME2 (7)  NOT NULL,
    CONSTRAINT [TransactioType_PK] PRIMARY KEY CLUSTERED ([TransactionTypeID] ASC)
);

