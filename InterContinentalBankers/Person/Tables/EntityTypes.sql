CREATE TABLE [Person].[EntityTypes] (
    [EntityTypeID]          INT            IDENTITY (1, 1) NOT NULL,
    [EntityTypeCode]        CHAR (3)       DEFAULT ('CUS') NOT NULL,
    [EntityTypeDescription] NVARCHAR (255) DEFAULT ('Customer') NOT NULL,
    [DateInserted]          DATETIME2 (7)  NOT NULL,
    CONSTRAINT [EntityType_PK] PRIMARY KEY CLUSTERED ([EntityTypeID] ASC)
);

