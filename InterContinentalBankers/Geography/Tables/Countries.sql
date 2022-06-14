CREATE TABLE [Geography].[Countries] (
    [CountryID]      INT            IDENTITY (1, 1) NOT NULL,
    [CountryName]    NVARCHAR (150) NOT NULL,
    [OfficialName]   NVARCHAR (200) NOT NULL,
    [ISOAlpha3Code]  CHAR (3)       DEFAULT ('PRT') NULL,
    [ISOAlpha2Code]  CHAR (2)       DEFAULT ('AO') NULL,
    [ISONumericCode] INT            NULL,
    [Continent]      NVARCHAR (50)  NOT NULL,
    [Region]         NVARCHAR (50)  NOT NULL,
    [SubRegion]      NVARCHAR (50)  NOT NULL,
    [DateInserted]   DATETIME2 (7)  NOT NULL,
    CONSTRAINT [Countries_PK] PRIMARY KEY CLUSTERED ([CountryID] ASC)
);

