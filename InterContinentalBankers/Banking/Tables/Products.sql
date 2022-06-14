CREATE TABLE [Banking].[Products] (
    [ProductID]    INT           IDENTITY (1, 1) NOT NULL,
    [ProductCode]  CHAR (3)      DEFAULT ('CHK') NOT NULL,
    [ProductName]  VARCHAR (255) DEFAULT ('Checking Account') NOT NULL,
    [DateInserted] DATETIME2 (7) NOT NULL,
    CONSTRAINT [Product_PK] PRIMARY KEY CLUSTERED ([ProductID] ASC)
);

