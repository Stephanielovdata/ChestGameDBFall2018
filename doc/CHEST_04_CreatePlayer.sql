CREATE PROCEDURE createPlayer(@Player_Name nvarchar(50))
AS 
DECLARE
    @IP_Address varchar(255)

-- get IP address
    select @IP_Address = client_net_address
    FROM sys.dm_exec_connections
    WHERE Session_id = @@SPID;

-- insert a new player into Player table
    insert into Player(Player_Name, IPAddress)
    values(@Player_Name,@IP_Address)
GO
-- create a new Player called Cassini
execute createPlayer @Player_Name = 'Cassini'
select * from Player

