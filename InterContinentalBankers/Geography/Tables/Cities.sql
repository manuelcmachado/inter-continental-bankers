CREATE TABLE [Geography].[Cities] (
    [CityID]          INT           IDENTITY (1, 1) NOT NULL,
    [CityName]        NVARCHAR (55) NOT NULL,
    [StateProvinceID] INT           NOT NULL,
    [DateInserted]    DATETIME2 (7) NOT NULL,
    CONSTRAINT [Cities_PK] PRIMARY KEY CLUSTERED ([CityID] ASC),
    CONSTRAINT [FKCities329753] FOREIGN KEY ([StateProvinceID]) REFERENCES [Geography].[StateProvinces] ([StateProvinceID])
);

