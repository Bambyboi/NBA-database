-- Which teams assists on field goals percentage is more than 50\%? 

SELECT TeamName, CAST(AST as FLOAT)/CAST(FG as FLOAT) as AFG
FROM teams
JOIN team_stats ON teams.Teams_id = team_stats.Teams_id
WHERE CAST(AST as FLOAT)/CAST(FG as FLOAT) > .5;