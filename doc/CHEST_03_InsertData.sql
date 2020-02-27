--Player table 
INSERT INTO Player 
            (LoginTime, 
             Player_Name, 
             Player_Level, 
             Chestatlvl, 
             Player_Heart, 
             Currency, 
             IpAddress) 
VALUES      (
             '2018-06-17', 
             'Nyancat', 
             3, 
             2, 
             4, 
             76, 
             '127.60.153.81'); 

INSERT INTO Player 
            (LoginTime, 
             Player_Name, 
             Player_Level, 
             Chestatlvl, 
             Player_Heart, 
             Currency, 
             IpAddress) 
VALUES      (
             '2018-08-03', 
             'GLHF', 
             2, 
             3, 
             3, 
             58, 
             '49.193.236.153'); 

INSERT INTO Player 
            (LoginTime, 
             Player_Name, 
             Player_Level, 
             Chestatlvl, 
             Player_Heart, 
             Currency, 
             IpAddress) 
VALUES      (
             '2018-11-19', 
             'CaptainTeemoOnDuty', 
             3, 
             0, 
             4, 
             61, 
             '87.207.84.134'); 

INSERT INTO Player 
            (LoginTime, 
             Player_Name, 
             Player_Level, 
             Chestatlvl, 
             Player_Heart, 
             Currency, 
             IpAddress) 
VALUES      (
             '2018-09-12', 
             'abrymner', 
             1, 
             3, 
             2, 
             5, 
             '41.4.250.111'); 

-- player archive
INSERT INTO [PlayerArchive]
            (Player_ID,
             Player_Name,
             LoginTime,
             Player_Level,
             Currency)
VALUES      (1001,
            'Pachuli',
            '2011-01-27',
            8,
            275
)
INSERT INTO [PlayerArchive]
            (Player_ID,
             Player_Name,
             LoginTime,
             Player_Level,
             Currency)
VALUES      (1002,
            'Marisa',
            '2016-9-28',
            2,
            20
)
INSERT INTO [PlayerArchive]
            (Player_ID,
             Player_Name,
             LoginTime,
             Player_Level,
             Currency)
VALUES      (1003,
            'Reimu',
            '2017-07-17',
            3,
            15
)
INSERT INTO [PlayerArchive]
            (Player_ID,
             Player_Name,
             LoginTime,
             Player_Level,
             Currency)
VALUES      (1004,
            'Yuuka',
            '2015-05-25',
            13,
            770
)
-- effect table 
--speed down effect
INSERT INTO Effect 
            (Effect_Heart, 
             Effect_Speed) 
VALUES      (0, 
             -0.15); 
--speed up effect
INSERT INTO Effect 
            (Effect_Heart, 
             Effect_Speed) 
VALUES      (0, 
             0.1); 
--loose health effect
INSERT INTO Effect 
            (Effect_Heart, 
             Effect_Speed) 
VALUES      (-0.25, 
             0);
-- gain health effect 
INSERT INTO Effect 
            (Effect_Heart, 
             Effect_Speed) 
VALUES      (1, 
             0);
--speed up effect
INSERT INTO Effect 
            (Effect_Heart, 
             Effect_Speed) 
VALUES      (0, 
             1.8); 


-- item effect table 
INSERT INTO Item_effect 
            ([Name],
             Duration, 
             Effect_ID) 
VALUES      ('Speed reduced', 
             '00:03:00', 
             1); 

INSERT INTO Item_effect 
            ([Name],
             Duration, 
             Effect_ID) 
VALUES      ('Speed up', 
             '00:02:00', 
             2); 

INSERT INTO Item_effect 
            ([Name],
             Duration, 
             Effect_ID) 
VALUES      ('Loose heart', 
             '00:01:15', 
             3); 

INSERT INTO Item_effect 
            ([Name],
             Duration, 
             Effect_ID) 
VALUES      ('Gain heart', 
             '00:02:35', 
             4);

INSERT INTO Item_effect 
            ([Name],
             Duration, 
             Effect_ID) 
VALUES      ('Rocket jump', 
             '00:00:10', 
             5);

-- Climate table 
INSERT INTO Climate 
            ([Name], 
             Effect_ID) 
VALUES      ('Mountain', 
             1); 

INSERT INTO Climate 
            ([Name], 
             Effect_ID) 
VALUES      ('Windy', 
             2);

INSERT INTO Climate 
            ([Name], 
             Effect_ID) 
VALUES      ('Desert', 
             3);

INSERT INTO Climate 
            ([Name], 
             Effect_ID) 
VALUES      ('Rainbow', 
             4);   


             
-- Map climate table 
INSERT INTO Map_Climate 
            (Map_Location, 
             Climate_ID, 
             MaxRadius, 
             InitialRadius, 
             Speed) 
VALUES      ('0007,0432', 
             1, 
             200, 
             90, 
             35); 

INSERT INTO Map_Climate 
            (Map_Location, 
             Climate_ID, 
             MaxRadius, 
             InitialRadius, 
             Speed)
VALUES      ('0089,0078', 
             2, 
             1, 
             160, 
             -45);

INSERT INTO Map_Climate 
            (Map_Location, 
             Climate_ID, 
             MaxRadius, 
             InitialRadius, 
             Speed)
VALUES      ('0546,0836', 
             3, 
             700, 
             500, 
             20);

INSERT INTO Map_Climate 
            (map_location, 
             climate_id, 
             maxradius, 
             initialradius, 
             speed) 
VALUES      ('0023,0223', 
             4, 
             50, 
             30, 
             15); 

--Item table 
INSERT INTO Item 
            (Item_Name, 
             Destroy, 
             Currency, 
             Item_Effect_ID) 
VALUES      ('Rocket', 
             1, 
             500, 
             5); 

INSERT INTO Item 
            (Item_Name, 
             Destroy, 
             Currency, 
             Item_Effect_ID) 
VALUES      ('First aid bandage', 
             1, 
             500, 
             4); 

INSERT INTO Item 
            (Item_Name, 
             Destroy, 
             Currency, 
             Item_Effect_ID) 
VALUES      ('Giant Slug', 
             0, 
             500, 
             1); 

INSERT INTO Item 
            (Item_Name, 
             Destroy, 
             Currency) 
VALUES      ('Pumpkin', 
             1, 
             5); 


INSERT INTO Item 
            (Item_Name, 
             Destroy, 
             Currency)  
VALUES      ('Beautiful Shell', 
             1, 
             8); 

INSERT INTO Item 
            (Item_Name, 
             Destroy, 
             Currency) 
VALUES      ('Muffin - Bran Ind Wrpd', 
             1, 
            9); 

INSERT INTO Item 
            (Item_Name, 
             Destroy, 
             Currency) 
VALUES      ('Iron Chest Key', 
             0, 
            0); 
INSERT INTO Item 
            (Item_Name, 
             Destroy, 
             Currency) 
VALUES      ('Gold Chest Key', 
             0, 
             0); 





--Player asset table 
INSERT INTO Player_Assets 
            (Item_ID, 
             Player_ID, 
             Quantity) 
VALUES      (3, 
             1, 
             2); 
             
INSERT INTO Player_Assets 
            (Item_ID, 
             Player_ID, 
             Quantity) 
VALUES      (7, 
             1, 
             1); 


INSERT INTO Player_Assets 
            (Item_ID, 
             Player_ID, 
             Quantity) 
VALUES      (4, 
             1, 
             3); 

INSERT INTO Player_Assets 
            (Item_ID, 
             Player_ID, 
             Quantity) 
VALUES      (1, 
             2, 
             2);

INSERT INTO Player_Assets 
            (Item_ID, 
             Player_ID, 
             Quantity) 
VALUES      (5, 
             2, 
             2);

INSERT INTO Player_Assets 
            (Item_ID, 
             Player_ID, 
             Quantity) 
VALUES      (7, 
             3, 
             1); 

INSERT INTO Player_Assets 
            (Item_ID, 
             Player_ID, 
             Quantity) 
VALUES      (8, 
             4, 
             1); 
              


--Key table 
INSERT INTO [KEY] (
             key_name, 
             key_item_id) 
             select Item_Name,Item_ID
             from Item
             where Item_Name = 'Iron Chest Key';

INSERT INTO [KEY] ( 
             key_name, 
             key_item_id) 
             select Item_Name,Item_ID
             from Item
             where Item_Name = 'Gold Chest Key';

--Chesttype table 
INSERT INTO ChestType 
            (ChestType_Name, 
             KeyRequire, 
             Duration) 
VALUES      ('Wood', 
             '0', 
             '00:01:30'); 

INSERT INTO ChestType 
            (ChestType_Name, 
             KeyRequire, 
             Duration, 
             Key_ID) 
VALUES      ('Iron', 
             1, 
             '00:03:00', 
             1); 

INSERT INTO ChestType 
            (ChestType_Name, 
             KeyRequire, 
             Duration, 
             Key_ID) 
VALUES      ('Gold', 
             1, 
             '00:05:00', 
             2); 
-- Wood, Iron, Gold tables
INSERT INTO Loot_Wood(
            Item_ID,
            Currency,
            Item_Quantity_MIN,
            Item_Quantity_MAX
            )
VALUES      (
            2,
            15,
            1,
            3
            );
INSERT INTO Loot_Wood(
            Item_ID,
            Currency,
            Item_Quantity_MIN,
            Item_Quantity_MAX
            )
VALUES      (
            6,
            30,
            2,
            6
            );
INSERT INTO Loot_Wood(
            Item_ID,
            Currency,
            Item_Quantity_MIN,
            Item_Quantity_MAX
            )
VALUES      (
            7,
            3,
            1,
            2
            );
INSERT INTO Loot_Wood(
            Item_ID,
            Currency,
            Item_Quantity_MIN,
            Item_Quantity_MAX
            )
VALUES      (
            4,
            4,
            3,
            5
            );
INSERT INTO Loot_Iron(
            Item_ID,
            Currency,
            Item_Quantity_MIN,
            Item_Quantity_MAX
            )
VALUES      (
            2,
            533,
            7,
            10
            );
INSERT INTO Loot_Iron(
            Item_ID,
            Currency,
            Item_Quantity_MIN,
            Item_Quantity_MAX
            )
VALUES      (
            8,
            600,
            1,
            2
            );
INSERT INTO Loot_Iron(
            Item_ID,
            Currency,
            Item_Quantity_MIN,
            Item_Quantity_MAX
            )
VALUES      (
            5,
            784,
            3,
            8
            );
INSERT INTO Loot_Gold(
            Item_ID,
            Currency,
            Item_Quantity_MIN,
            Item_Quantity_MAX
            )
VALUES      (
            1,
            3784,
            1,
            3
            );
INSERT INTO Loot_Gold(
            Item_ID,
            Currency,
            Item_Quantity_MIN,
            Item_Quantity_MAX
            )
VALUES      (
            3,
            7344,
            1,
            2
            );






