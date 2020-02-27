CREATE PROCEDURE createLoot_Wood
AS
DECLARE @index_max int,
        @index_item int,
        @currency int,
		@loot int,
        @lootquantity int
BEGIN
    --get a random item from table Loot_Wood
    select @index_max = count(*) from Loot_Wood;
    select @index_item = FLOOR(RAND()*(@index_max-1+1))+1;
    select @loot = Item_ID 
    from Loot_Wood 
    where Item_Index = @index_item;
    -- generate amount of this item
    select @lootquantity = FLOOR(RAND()*(Item_Quantity_MAX-Item_Quantity_MIN+1))+Item_Quantity_MIN
    from Loot_Wood
    where Item_Index = @index_item;
    -- generate random amount of currency
    select @currency = FLOOR(RAND()*(500-1+1))+1;
    --insert value into Chest table
    insert into [Chest](ChestType_Name,Currency,Loot,Loot_Quantity)
    values('Wood',@currency,@loot,@lootquantity);
END
GO

execute createLoot_Wood
--select * from Chest
GO

CREATE PROCEDURE createLoot_Iron
AS 
DECLARE @index_max int,
        @index_item int,
        @currency int,
		@loot int,
        @lootquantity int
BEGIN
    --get a random item from table Loot_Iron
    select @index_max = count(*) from Loot_Iron;
    select @index_item = FLOOR(RAND()*(@index_max-1+1))+1;
    select @loot = Item_ID 
    from Loot_Iron
    where Item_Index = @index_item;
    -- generate amount of this item
    select @lootquantity = FLOOR(RAND()*(Item_Quantity_MAX-Item_Quantity_MIN+1))+Item_Quantity_MIN
    from Loot_Iron
    where Item_Index = @index_item;
    -- generate random amount of currency
    select @currency = FLOOR(RAND()*(1000-501+1))+501;
    --insert value into Chest table
    insert into [Chest](ChestType_Name,Currency,Loot,Loot_Quantity)
    values('Iron',@currency,@loot,@lootquantity);
END
GO

execute createLoot_Wood
--select * from Chest
GO


CREATE PROCEDURE createLoot_Gold
AS 
DECLARE @index_max int,
        @index_item int,
        @currency int,
		@loot int,
        @lootquantity int
BEGIN
    --get a random item from table Loot_Gold
    select @index_max = count(*) from Loot_Gold;
    select @index_item = FLOOR(RAND()*(@index_max-1+1))+1;
    select @loot = Item_ID 
    from Loot_Gold
    where Item_Index = @index_item;
    -- generate amount of this item
    select @lootquantity = FLOOR(RAND()*(Item_Quantity_MAX-Item_Quantity_MIN+1))+Item_Quantity_MIN
    from Loot_Gold
    where Item_Index = @index_item;
    -- generate random amount of currency
    select @currency = FLOOR(RAND()*(9999-1001+1))+1001;
    --insert value into Chest table
    insert into Chest(ChestType_Name,Currency,Loot,Loot_Quantity)
    values('Gold',@currency,@loot,@lootquantity);
end
GO

execute createLoot_Wood
--select * from Chest
GO
