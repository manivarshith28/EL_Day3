-- selecting all raiders 
select * from kabaddi_players where position = 'Raider';

-- selecting all defenders
select * from kabaddi_players where position = 'Defender';

-- selecting all all-rounders
select * from kabaddi_players where position = 'All-Rounder';

-- sorting names in alphabetical order
select name from kabaddi_players order by name;

-- players with more tackle points are placed first
select name, tackle_points from kabaddi_players order by tackle_points desc;

-- players with more raid points are placed first
select name, raid_points from kabaddi_players order by raid_points desc;

-- top 5 raiders
select name, raid_points from kabaddi_players order by raid_points desc limit 5;

-- top 5 defenders
select name, tackle_points from kabaddi_players order by tackle_points desc limit 5;

-- some other queries using "and", "or", "between"
select player_id, name, age from kabaddi_players where age > 30 and is_active = 1;
select name, team, position from kabaddi_players where team = 'Telugu Titans' or position = 'All-Rounder';
select name, team, position from kabaddi_players where team = 'Telugu Titans' and position = 'All-Rounder';
select name, age from kabaddi_players where age between 20 and 25;
select name, age from kabaddi_players where age between 20 and 30;
select name, age from kabaddi_players where age between 30 and 35;

-- retrieving players who has "ee" in their name
select name from kabaddi_players where name like '%ee%';

-- retrieving players who has "kumar" in their name 
select name from kabaddi_players where name like '%kumar%';

-- retrieving players who has second letter as "a" in their name
select name from kabaddi_players where name like '_a%';

-- retrieving players who has ending letter as "l" in their name
select name from kabaddi_players where name like '%l';

