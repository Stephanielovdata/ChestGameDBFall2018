CREATE PROCEDURE PastPlayer
AS 
BEGIN
    --remove player 1 month ago from Player table 
    delete from Player
    where DATEDIFF(month, getdate(), LoginTime) > 1
END
GO


CREATE TRIGGER ArchivePlayer ON Player
AFTER DELETE
AS 
DECLARE
    @rownumber int
BEGIN
    -- check if deleted players are all old ones
    select @rownumber = count(*)
    from deleted
    where DATEDIFF(month, getdate(), LoginTime) < 1
    IF @rownumber > 0
    BEGIN
        ROLLBACK;
    END
    -- otherwise archive these players
    insert into PlayerArchive (Player_ID, Player_Name, LoginTime,Player_Level,Currency)
    select Player_ID, Player_Name, LoginTime,Player_Level,Currency
    from deleted;
END
GO