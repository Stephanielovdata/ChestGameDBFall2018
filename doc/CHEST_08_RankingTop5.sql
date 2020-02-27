CREATE VIEW [Ranking Top 5]
AS
    select top 5 Currency, Player_Name
    from Player
    order by Currency DESC
GO

SELECT * FROM [Ranking Top 5];
