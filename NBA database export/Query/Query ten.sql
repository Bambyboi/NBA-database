-- On average, which teams scored the most free throws? 

SELECT TeamName, FT/Gms
FROM teams
JOIN team_stats ON teams.Teams_id = team_stats.Teams_id
ORDER BY FT/Gms DESC
Limit 15;