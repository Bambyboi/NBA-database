-- What were the 25 highest scoring players under 25?

SELECT Name, Age, round(CAST(PTS as FLOAT)/CAST(GMS as FLOAT),2) as PPG
FROM players p
Inner join player_stats ps on p.Players_id = ps.Players_id
AND Age < 25 AND PTS > 0
ORDER BY ppg DESC
LIMIT 25;