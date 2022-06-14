CREATE TABLE [Banking].[Currencies] (
    [CurrencyID]     INT           IDENTITY (1, 1) NOT NULL,
    [Currency]       VARCHAR (255) NOT NULL,
    [CurrencyCode]   CHAR (3)      NOT NULL,
    [CurrencyEntity] VARCHAR (255) NOT NULL,
    [DateInserted]   DATETIME2 (7) NOT NULL,
    CONSTRAINT [Currency_PK] PRIMARY KEY CLUSTERED ([CurrencyID] ASC)
);

