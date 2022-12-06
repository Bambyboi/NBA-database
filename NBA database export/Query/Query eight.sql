-- On average, how many turnovers did a particular team commit?

SELECT TeamName, CAST(TOV as FLOAT)/CAST(Gms as FLOAT) as tovPerGm
FROM teams
INNER JOIN team_stats 
ON teams.Teams_id = team_stats.Teams_id;