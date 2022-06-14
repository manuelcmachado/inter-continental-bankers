CREATE TABLE [Banking].[Channels_Products] (
    [ChannelsChannelID] INT NOT NULL,
    [ProductsProductID] INT NOT NULL,
    PRIMARY KEY CLUSTERED ([ChannelsChannelID] ASC, [ProductsProductID] ASC),
    CONSTRAINT [FKChannels_P501025] FOREIGN KEY ([ChannelsChannelID]) REFERENCES [Banking].[Channels] ([ChannelID]),
    CONSTRAINT [FKChannels_P523196] FOREIGN KEY ([ProductsProductID]) REFERENCES [Banking].[Products] ([ProductID])
);

