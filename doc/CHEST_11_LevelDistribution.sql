CREATE PROCEDURE LevelDistribution1month
AS 
BEGIN
    SELECT Player_Level,Count(Player_Level) as [Number of Players]
    FROM Player
    GROUP BY Player_Level
    ORDER BY Player_Level ASC
END
GO

EXEC LevelDistribution1month
go

CREATE PROCEDURE LevelDistribution5month
AS 
BEGIN
    SELECT Player_Level ,Count(Player_Level) as [Number of Players]
    FROM PlayerArchive
    GROUP BY Player_Level, LoginTime
    HAVING DATEDIFF(month, getdate(), LoginTime) < 5
    ORDER BY Player_Level ASC
END
GO

EXEC LevelDistribution5month
go

