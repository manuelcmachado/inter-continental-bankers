CREATE TABLE [Banking].[AccountTypes] (
    [AccountTypeID]          INT           IDENTITY (1, 1) NOT NULL,
    [AccountType]            CHAR (3)      DEFAULT ('PRS') NOT NULL,
    [AccountTypeDescription] VARCHAR (35)  DEFAULT ('Personal Single Account') NOT NULL,
    [DateInserted]           DATETIME2 (0) NOT NULL,
    CONSTRAINT [AccountType_PK] PRIMARY KEY CLUSTERED ([AccountTypeID] ASC)
);

