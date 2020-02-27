/*
Data Analysis Department will evaluate a specific marketing 
strategy with KPI: count the number of logged in users before 
and after a marketing strategy is implemented during the period 
between the start time of this game and today. 
*/

CREATE PROCEDURE KPIMarketingStrategy (@MarketingDate date)
AS 
BEGIN
    SELECT   Player_Level,
             count(Player_Level) AS [User Number Before]
    FROM     PlayerArchive 
    GROUP BY Player_Level, LoginTime
    HAVING   LoginTime BETWEEN '01-01-2014' AND @MarketingDate 

    SELECT   Player_Level, 
             count(Player_Level) AS [Users Number After]
    FROM     PlayerArchive
    GROUP BY Player_Level, LoginTime
    HAVING   LoginTime BETWEEN @MarketingDate AND getdate()
    ORDER BY Player_Level ASC
END
GO

EXEC KPIMarketingStrategy @MarketingDate = '07-07-2017'
GO


