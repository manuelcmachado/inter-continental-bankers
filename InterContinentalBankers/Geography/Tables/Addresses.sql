CREATE TABLE [Geography].[Addresses] (
    [AddressID]    INT            IDENTITY (1, 1) NOT NULL,
    [AddressLine1] CHAR (3)       DEFAULT ('PHO') NOT NULL,
    [AddressLine2] NVARCHAR (255) DEFAULT ('Telephone') NULL,
    [CityID]       INT            NOT NULL,
    [PostalCode]   INT            NOT NULL,
    [DateInserted] DATETIME2 (7)  NOT NULL,
    CONSTRAINT [Address_PK] PRIMARY KEY CLUSTERED ([AddressID] ASC),
    CONSTRAINT [FKAddresses654863] FOREIGN KEY ([CityID]) REFERENCES [Geography].[Cities] ([CityID])
);

