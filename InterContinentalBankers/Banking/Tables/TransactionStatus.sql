CREATE TABLE [Banking].[TransactionStatus] (
    [TransactionStatusID]          INT            IDENTITY (1, 1) NOT NULL,
    [TransactionStatusDescription] NVARCHAR (255) NOT NULL,
    [TransactionStatusCode]        CHAR (3)       NOT NULL,
    [DateInserted]                 DATETIME2 (7)  NOT NULL,
    CONSTRAINT [TransactionStatus_PK] PRIMARY KEY CLUSTERED ([TransactionStatusID] ASC)
);

