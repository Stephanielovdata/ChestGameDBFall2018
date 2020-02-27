-- create tables
CREATE TABLE [Player](
    [Player_ID]    int NOT NULL IDENTITY(1,1),
    [LoginTime]    datetime default getdate(),
    [Player_Name]  nvarchar(50) NOT NULL ,
    [Player_Level] smallint NOT NULL default 1,
    [Chestatlvl]   tinyint NOT NULL default 0,
    [Player_Heart] float NOT NULL default 2,
    [Currency]     int NOT NULL default 0,
    [IPAddress]    varchar(255) not null,

    CONSTRAINT PK_Player PRIMARY KEY CLUSTERED (Player_ID ASC)
);
GO

-- past players
CREATE TABLE [PlayerArchive](
    [Player_ID]    int NOT NULL ,
    [Player_Name]  nvarchar(50) NOT NULL ,
    [LoginTime]    datetime NOT NULL ,
    [Player_Level] smallint NOT NULL ,
    [Currency]     int NOT NULL ,

    CONSTRAINT [PK_PastPlayer] PRIMARY KEY CLUSTERED ([Player_ID] ASC)
);
GO


CREATE TABLE [Effect](
    [Effect_ID]    int NOT NULL identity(1,1),
    [Effect_Heart] float NULL ,
    [Effect_Speed] float NULL ,

    CONSTRAINT PK_Effect PRIMARY KEY CLUSTERED (Effect_ID ASC)
);
GO

CREATE TABLE [Item_Effect](
    [Item_Effect_ID] int NOT NULL identity(1,1),
    [Name]           nvarchar(50) NOT NULL ,
    [Duration]       time(7) NOT NULL ,
    [Effect_ID]      int NOT NULL ,

    CONSTRAINT PK_Item_Effect PRIMARY KEY (Item_Effect_ID),
    CONSTRAINT FK_Item_Effect_ID FOREIGN KEY (Effect_ID)  REFERENCES [Effect](Effect_ID)
);
GO

CREATE TABLE [Climate](
    [Climate_ID] int NOT NULL identity(1,1),
    [Name]       nvarchar(50) NOT NULL ,
    [Effect_ID]  int NOT NULL ,

    CONSTRAINT PK_Climate PRIMARY KEY (Climate_ID),
    CONSTRAINT FK_Climate_Effect_ID FOREIGN KEY (Effect_ID) REFERENCES [Effect](Effect_ID)
);
GO

CREATE TABLE [Map_Climate](
    [Map_Location]      nvarchar(10) NOT NULL ,
    [Climate_ID]    int NOT NULL ,
    [MaxRadius]     smallint NOT NULL ,
    [InitialRadius] smallint NOT NULL ,
    [Speed]         float not null,

    CONSTRAINT PK_Map_Climate PRIMARY KEY (Map_Location,Climate_ID),
    CONSTRAINT FK_Climate_ID FOREIGN KEY (Climate_ID)  REFERENCES [Climate](Climate_ID)
);
GO

CREATE TABLE [Item](
    [Item_ID]        int NOT NULL identity(1,1),
    [Item_Name]      nvarchar(50) NOT NULL ,
    [Destroy]        bit NOT NULL ,
    [Currency]       smallint NOT NULL ,
    [Item_Effect_ID] int NULL ,

    CONSTRAINT PK_Item PRIMARY KEY CLUSTERED (Item_ID ASC),
    CONSTRAINT FK_Item_ID_Effect_ID FOREIGN KEY (Item_Effect_ID)  REFERENCES [Item_Effect](Item_Effect_ID)
);
GO

CREATE TABLE [Player_Assets](
    [Item_ID]   int NOT NULL ,
    [Player_ID] int NOT NULL ,
    [Quantity]  tinyint NOT NULL ,

    CONSTRAINT PK_Player_Assets PRIMARY KEY CLUSTERED (Item_ID,Player_ID ASC),
    CONSTRAINT FK_Item_ID FOREIGN KEY ([Item_ID])  REFERENCES [Item]([Item_ID]),
    CONSTRAINT FK_Player_ID FOREIGN KEY ([Player_ID])  REFERENCES [Player]([Player_ID])
);
GO

CREATE TABLE [Key](
    [Key_ID] int NOT NULL identity(1,1),
    [Key_Name] nvarchar(50) NOT NULL,
    [Key_Item_ID] int NOT NULL,

    CONSTRAINT PK_Key PRIMARY KEY (Key_ID),
    CONSTRAINT FK_Key_Item_ID FOREIGN KEY ([Key_Item_ID])  REFERENCES [Item]([Item_ID])
);
GO

CREATE TABLE [ChestType](
    [ChestType_Name]      varchar(20) NOT NULL ,
    [KeyRequire]          bit NOT NULL ,
    [Duration]            time(7) NOT NULL ,
    [Key_ID]              int NULL ,

    CONSTRAINT PK_ChestType PRIMARY KEY CLUSTERED (ChestType_Name ASC),
    CONSTRAINT FK_Key_ID FOREIGN KEY ([Key_ID])  REFERENCES [Key]([Key_ID])
);
GO


CREATE TABLE [Loot_Wood](
    [Item_Index]             int identity(1,1),
    [Item_ID]           int NOT NULL ,
    [Currency]          int NULL ,
    [Item_Quantity_MIN] tinyint NOT NULL ,
    [Item_Quantity_MAX] tinyint NOT NULL ,

    CONSTRAINT PK_Wood_Item_Index PRIMARY KEY CLUSTERED (Item_Index),
    CONSTRAINT FK_Wood_Item_ID FOREIGN KEY ([Item_ID])  REFERENCES [Item]([Item_ID])
);
GO

CREATE TABLE [Loot_Iron](
    [Item_Index]             int identity(1,1),
    [Item_ID]           int NOT NULL ,
    [Currency]          int NULL ,
    [Item_Quantity_MIN] tinyint NOT NULL ,
    [Item_Quantity_MAX] tinyint NOT NULL ,

    CONSTRAINT PK_Iron_Item_Index PRIMARY KEY CLUSTERED (Item_Index ASC),
    CONSTRAINT FK_Iron_Item_ID FOREIGN KEY ([Item_ID])  REFERENCES [Item]([Item_ID])
);
GO

CREATE TABLE [Loot_Gold](
    [Item_Index]             int identity(1,1),
    [Item_ID]           int NOT NULL ,
    [Currency]          int NULL ,
    [Item_Quantity_MIN] tinyint NOT NULL ,
    [Item_Quantity_MAX] tinyint NOT NULL ,

    CONSTRAINT PK_Gold_Item_Index PRIMARY KEY CLUSTERED (Item_Index ASC),
    CONSTRAINT FK_Gold_Item_ID FOREIGN KEY ([Item_ID])  REFERENCES [Item]([Item_ID])
);
GO


CREATE TABLE [Chest](
    [Chest_ID]     int NOT NULL identity(1,1),
    [SpawnTime]    datetime default getdate(),
    [ChestType_Name] varchar(20) not null,
    [Currency] int NOT NULL,
    [Loot] int not null,
    [Loot_Quantity] smallint not null

    CONSTRAINT PK_Chest PRIMARY KEY (Chest_ID),
    CONSTRAINT FK_ChestType_Name FOREIGN KEY (ChestType_Name) REFERENCES [ChestType]([ChestType_Name]),
    CONSTRAINT FK_Loot FOREIGN KEY (Loot)  REFERENCES [Item](Item_ID),
);
GO

Print 'Tables created'