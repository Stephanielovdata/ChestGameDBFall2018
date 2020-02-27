# Relational Database Management Final Project
Project Name: Chest Game

Project Member: Cheng Su, Guoying Li

Deadline: 11/28/2018 

(click to see more information)

#View criteria here#

#Tables#

#Presentation Slides#

#SQL File#

# Overview
Our relational database management final project consists of datasets for a game. Main mechanism of the game simply involves players opening limited number of chests that spawn on the map. Every round lasts 5 minutes, the winner would be a survivor with most money. Players are able to loot items (in our presentation, it’s a bunch of data from grocery store) or money (cash) in the chests, or their paces/speed are affected by the item effects instantly. Climate condition (Hot, mild or cold) randomly spawns on the map may affect player's condition (players’ heart/health), and players can choose to either avoid or take advantage of them.

In order to archive user's satisfaction and game balance, we would like to analyze the data, including ranking of players/teams and loots they earned. In addition, to evaluate the performance of a specific marketing strategy, we will evaluate the KPIs at each level.

# Description
I. Game Mechanism
   1. Core mechanism
Each round last 5 to 10 minutes based on the current number of player. Player's goal is to survive till the end of the game and obtain most currency from the chest, and the items left in the bag will be converted and added to currency for their rankings at the end of each round.
   2. Chest, Loot and Item
The chests will disappear from the map after unlocked by player or if the chests still remain locked after a specific time of period. Players either loot item directly, or they are affected by item effect instantly. Item can be used upon click, to gain buff, debuff or restore health.
   3. Player (Level)
Players will increase by one level as they open every 3 chests. Increasing by one level will grant players an extra heart and increase 5% speed of current level's.
   4. Environment, Climate and Map
Special climate randomly spawns on the map at random time, and might or might not have multiple special climate area at the same time.
   5. UI Display
Displayed information include current round time countdown, current top 5 rank currency, player information(heart and buff) and player asset in the bag.

# ER Diagram
Table ER 

diagram:https://app.sqldbm.com/SQLServer/Share/vHOHs7TRNaRNwwezn_Tn60GFrngIE8md_DYjF4jNYw0

Table: https://docs.google.com/document/d/1la5VAcfYml7s_tl8M-kHl1Kk6u77SBTTPRJ7ejExk70/edit?usp=sharing

# Normalization & Denormalization

# Functions & Procedures
https://drive.google.com/drive/folders/1V5waf61CfhyjKEraS7HdG6wyfNdw8zfu?usp=sharing

# KPI
Marketing Department creates a variety of strategies for marketing, such as sending weekly emails, posting our latest versions of games in Instagram and so on. To evaluate the performance of these marketing strategies, we are interested in compare the KPI , in this case, it’s the number of players at each level, before and after these marketing strategies. 

# Performance Improvement
-Indexes: Cluster constraints added for primary key
-Currently we support 1 map, players, chests, items, effects and so on. For the next 2 years, we expect the tables to grow by average 50 a month. 

# Future Concerns
1. Delete Inactive Players 

As increasing the number of players, the accounts of inactive player would be deleted from the current database management system and at the same time archived into another file which is used to save all the deleted data. In other words, once any data is deleted, it will be automatically archived into another file called PlayerArchive. 

An active player sends message to server every second, if message hasn’t been received for consecutively 1 minute, the player becomes an inactive player.

2. Flow control

To prevent excessive number of players on one map, players are split into rooms and each room can hold at most 15 players. A player will join a room based on the created time of the room. If a player in the room left the game, after 15 seconds a new player is allowed to join this room. If all rooms have more than 10 players, a new room will be created for incoming players.

Special rooms with code can be created. Entering the room requires entering a passcode created for this room.

3.Unstable Connection

# Future Ideas
1. Social, integrate with other software

Integrate with other login systems, eg. gmail, facebook, wechat, line, kakaotalk

Games with friends instead of alone, social, real-time, real location. 

Example: climate in this game depends upon player’s real location (los angeles- hot; new york- cold; otherwise, mild; this is simple but real fun design at this stage. 

2. Real time & locations

In the future, we might be able to retrieve real world locations, eg. shopping mall, parks, flight; rewards may be real as well, such as coupon for shopping. 

Example/application: shopping instruction/map before or during flights, users can spend their time shopping and gaming in their spare time. 
 
