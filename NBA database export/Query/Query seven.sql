-- What players played less than or equal to half the season but scored over 15 points a game?

SELECT Name, Gms, PTS, CAST(PTS as FLOAT)/CAST(Gms as FLOAT) as ppg
FROM player_stats
inner join players on players.Players_id = player_stats.Players_id
WHERE Gms <= 41 
AND CAST(PTS as FLOAT)/CAST(Gms as FLOAT) > 15 
AND PTS > 0
ORDER BY CAST(PTS as FLOAT)/CAST(Gms as FLOAT) DESC;