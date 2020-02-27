--drop all tables
DROP PROCEDURE IF EXISTS dropTables
GO
CREATE PROCEDURE dropTables
AS
DROP TABLE IF EXISTS [Loot_Wood];
DROP TABLE IF EXISTS [Loot_Iron];
DROP TABLE IF EXISTS [Loot_Gold];
DROP TABLE IF EXISTS [Chest];
DROP TABLE IF EXISTS [ChestType];
DROP TABLE IF EXISTS [Player_Assets];
DROP TABLE IF EXISTS [Key];
DROP TABLE IF EXISTS[Map_Climate];
DROP TABLE IF EXISTS[Item];
DROP TABLE IF EXISTS[Item_Effect];
DROP TABLE IF EXISTS[Climate];
DROP TABLE IF EXISTS[Player];
DROP TABLE IF EXISTS[PastPlayers];
DROP TABLE IF EXISTS[Effect];
DROP TABLE IF EXISTS[PlayerArchive];
GO

EXECUTE dropTables;
PRINT 'All Tables Dropped'
GO
