CREATE TABLE [Geography].[StateProvinces] (
    [StateProvinceID]   INT           IDENTITY (1, 1) NOT NULL,
    [StateProvinceCode] CHAR (5)      DEFAULT ('FL') NOT NULL,
    [StateProvinceName] NVARCHAR (55) NOT NULL,
    [CountryID]         INT           NOT NULL,
    [DateInserted]      DATETIME2 (7) NOT NULL,
    CONSTRAINT [StateProvinceID_PK] PRIMARY KEY CLUSTERED ([StateProvinceID] ASC),
    CONSTRAINT [FKStateProvi903269] FOREIGN KEY ([CountryID]) REFERENCES [Geography].[Countries] ([CountryID])
);

