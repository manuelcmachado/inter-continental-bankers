CREATE TABLE [Banking].[Channels] (
    [ChannelID]    INT           IDENTITY (1, 1) NOT NULL,
    [ChannelCode]  CHAR (3)      DEFAULT ('INT') NOT NULL,
    [ChannelName]  NVARCHAR (55) DEFAULT ('Internet') NOT NULL,
    [DateInserted] DATETIME2 (0) NOT NULL,
    CONSTRAINT [Channels_PK] PRIMARY KEY CLUSTERED ([ChannelID] ASC)
);

