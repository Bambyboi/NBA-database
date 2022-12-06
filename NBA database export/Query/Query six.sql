-- What are the top ten teams with the highest field goal attempts (FGA), in order from highest to lowest? 

SELECT TeamName, FGA FROM teams
INNER JOIN team_stats ON teams.Teams_id = team_stats.Teams_id
ORDER BY FGA DESC
LIMIT 10;