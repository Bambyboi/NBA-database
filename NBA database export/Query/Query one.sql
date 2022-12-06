-- Which teams had the highest number of personal fouls in a season, on average?
use nba;
SELECT teamName, PF as fouls
FROM teams
JOIN team_stats 
ON teams.Teams_id = team_stats.Teams_id
ORDER BY PF DESC;