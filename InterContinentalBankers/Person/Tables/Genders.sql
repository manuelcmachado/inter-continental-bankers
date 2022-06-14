CREATE TABLE [Person].[Genders] (
    [GenderID]          INT            IDENTITY (1, 1) NOT NULL,
    [GenderCode]        CHAR (1)       DEFAULT ('M') NOT NULL,
    [GenderDescription] NVARCHAR (255) DEFAULT ('Male') NOT NULL,
    [DateInserted]      DATETIME2 (7)  NOT NULL,
    CONSTRAINT [GendersID_PK] PRIMARY KEY CLUSTERED ([GenderID] ASC)
);

