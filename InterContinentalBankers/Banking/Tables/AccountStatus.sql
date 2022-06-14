CREATE TABLE [Banking].[AccountStatus] (
    [AccountStatusID]          INT            IDENTITY (1, 1) NOT NULL,
    [AccountStatusCode]        CHAR (3)       DEFAULT ('OPN') NOT NULL,
    [AccountStatusDescription] NVARCHAR (255) DEFAULT ('Open') NOT NULL,
    [DateInserted]             DATETIME2 (7)  NOT NULL,
    CONSTRAINT [AccountStatus_PK] PRIMARY KEY CLUSTERED ([AccountStatusID] ASC)
);

