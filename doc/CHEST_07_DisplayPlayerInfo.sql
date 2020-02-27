CREATE PROCEDURE PlayerInfo @id int
AS
DECLARE
    @name nvarchar(50),
    @lvl smallint,
    @chest_at_lvl tinyint,
    @ip varchar(255),
    @heart float,
    @currency int
BEGIN
    select @name = Player_Name,
           @lvl = Player_Level,
           @chest_at_lvl = Chestatlvl,
           @ip = IPAddress,
           @heart = Player_Heart,
           @currency = Currency
    from [Player]
    where Player_ID = @id

    print 'Player Name: ' + cast(@name as varchar(255));
    print 'Player ID: ' + cast(@id as varchar(255));
    print 'Heart: ' + cast(@heart as varchar(255));
    print 'Player level: ' + cast(@lvl as varchar(255));
    print 'Number of chests opened at this level: ' + cast(@chest_at_lvl as varchar(255));
    print 'Money in pocket: ' + cast(@currency as varchar(255));
END
GO

EXECUTE PlayerInfo @id = 1
