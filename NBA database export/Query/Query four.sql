-- What was the oldest team in the league?

SELECT Name, Tm, AVG(Age) as 'Oldest team'
FROM players Inner JOIN player_stats ON players.Players_id = player_stats.Players_id
GROUP BY Tm
ORDER BY AVG(Age) DESC
limit 1;
