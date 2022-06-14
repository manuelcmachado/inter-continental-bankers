CREATE TABLE [Person].[BankEntities] (
    [EntityID]     INT            IDENTITY (1, 1) NOT NULL,
    [EntityTypeID] INT            NOT NULL,
    [FirstName]    NVARCHAR (35)  NOT NULL,
    [LastName]     NVARCHAR (50)  NOT NULL,
    [AddressID]    INT            NOT NULL,
    [GenderID]     INT            NOT NULL,
    [CellPhone]    NVARCHAR (25)  NOT NULL,
    [Email]        NVARCHAR (255) NULL,
    [DateInserted] DATETIME2 (7)  NOT NULL,
    CONSTRAINT [BankEntity_PK] PRIMARY KEY CLUSTERED ([EntityID] ASC),
    CONSTRAINT [FKBankEntiti601000] FOREIGN KEY ([EntityTypeID]) REFERENCES [Person].[EntityTypes] ([EntityTypeID]),
    CONSTRAINT [FKBankEntiti620587] FOREIGN KEY ([GenderID]) REFERENCES [Person].[Genders] ([GenderID]),
    CONSTRAINT [FKBankEntiti717309] FOREIGN KEY ([AddressID]) REFERENCES [Geography].[Addresses] ([AddressID])
);

