-- Which players have averaged 25 or more points per game?

SELECT name, PTS/Gms AS ppg
FROM players
JOIN player_stats ON players.Players_id = player_stats.Players_id
WHERE pts/gms >= 25;