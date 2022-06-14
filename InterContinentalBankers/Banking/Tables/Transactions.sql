CREATE TABLE [Banking].[Transactions] (
    [TransactionID]               INT           IDENTITY (1, 1) NOT NULL,
    [TransactionTypeID]           INT           NOT NULL,
    [TransactionPostedDate]       DATETIME2 (7) NOT NULL,
    [TransactionEffectiveDate]    DATETIME2 (7) NOT NULL,
    [TransactionCancellationDate] DATETIME2 (7) NULL,
    [TransactionAmount]           MONEY         DEFAULT ((1000)) NULL,
    [TransactionStatusID]         INT           NOT NULL,
    [DateInserted]                DATETIME2 (0) NOT NULL,
    CONSTRAINT [Transaction_PK] PRIMARY KEY CLUSTERED ([TransactionID] ASC),
    CONSTRAINT [FKTransactio204131] FOREIGN KEY ([TransactionStatusID]) REFERENCES [Banking].[TransactionStatus] ([TransactionStatusID]),
    CONSTRAINT [FKTransactio702343] FOREIGN KEY ([TransactionTypeID]) REFERENCES [Banking].[TransactionTypes] ([TransactionTypeID])
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Depending upon the transaction, this field may or may not have an amount. When a transaction does not have an amount, it is called a non-dollar transaction.', @level0type = N'SCHEMA', @level0name = N'Banking', @level1type = N'TABLE', @level1name = N'Transactions', @level2type = N'COLUMN', @level2name = N'TransactionAmount';

