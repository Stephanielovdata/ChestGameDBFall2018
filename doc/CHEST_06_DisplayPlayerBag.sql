CREATE PROCEDURE PlayerBag (@Player_ID int)
AS
    select *
    from [Player_Assets]
    where Player_ID = @Player_ID
GO

EXECUTE PlayerBag @Player_ID = 1
