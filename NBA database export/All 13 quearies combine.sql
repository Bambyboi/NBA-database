-- Here are some of the test cases that runs through my database

-- Which teams had the highest number of personal fouls in a season, on average?
use nba;
SELECT teamName, PF as fouls
FROM teams
JOIN team_stats 
ON teams.Teams_id = team_stats.Teams_id
ORDER BY PF DESC;

-- Which player played on the most teams?
Select p.Players_id, p.Name, ps.Tm, count(*) from players as p
inner join player_stats as ps
on p.Players_id = ps.Players_id
group by p.Name
order by p.Players_id asc;

-- Which players have averaged 25 or more points per game?

SELECT name, PTS/Gms AS ppg
FROM players
JOIN player_stats ON players.Players_id = player_stats.Players_id
WHERE pts/gms >= 25;

-- On average, which teams scored the most free throws? 

SELECT TeamName, FT/Gms
FROM teams
JOIN team_stats ON teams.Teams_id = team_stats.Teams_id
ORDER BY FT/Gms DESC
Limit 15;

-- Which teams assists on field goals percentage is more than 50\%? 

SELECT TeamName, CAST(AST as FLOAT)/CAST(FG as FLOAT) as AFG
FROM teams
JOIN team_stats ON teams.Teams_id = team_stats.Teams_id
WHERE CAST(AST as FLOAT)/CAST(FG as FLOAT) > .5;

-- Which currently active players have scored more than 60 points in a single game?
-- This question used to be: Who has the highest +/- on each team?
-- We had to change this question because the plus/minus statistic is impossible to calculate given our final data.

SELECT Name, Points, Year, Pos, Age
FROM top_scorers NATURAL JOIN players
ORDER BY points DESC;

-- using case determine players that their age is greater that 30 or equal to 30 and else will under 30 years old
SELECT Name, Age,
CASE WHEN Age > 30 THEN 'The Player age is greater than 30'
WHEN Age = 30 THEN 'The Players age is equal to 30'
ELSE 'The age is under 30'
END AS Age
FROM players;


-- Which player had the highest assist to turnover ratio?

SELECT players.Name, ast, tov, CAST(AST as FLOAT)/CAST(TOV as FLOAT) as astTovRatio
FROM player_stats
inner join players on player_stats.Players_id = players.Players_id
WHERE TOV > 0 AND AST > 0
ORDER BY astTovRatio DESC;

-- What was the oldest team in the league?

SELECT Name, Tm, AVG(Age) as 'Oldest team'
FROM players Inner JOIN player_stats ON players.Players_id = player_stats.Players_id
GROUP BY Tm
ORDER BY AVG(Age) DESC
limit 1;

-- What were the 25 highest scoring players under 25?

SELECT Name, Age, round(CAST(PTS as FLOAT)/CAST(GMS as FLOAT),2) as PPG
FROM players p
Inner join player_stats ps on p.Players_id = ps.Players_id
AND Age < 25 AND PTS > 0
ORDER BY ppg DESC
LIMIT 25;

-- What players played less than or equal to half the season but scored over 15 points a game?

SELECT Name, Gms, PTS, CAST(PTS as FLOAT)/CAST(Gms as FLOAT) as ppg
FROM player_stats
inner join players on players.Players_id = player_stats.Players_id
WHERE Gms <= 41 
AND CAST(PTS as FLOAT)/CAST(Gms as FLOAT) > 15 
AND PTS > 0
ORDER BY CAST(PTS as FLOAT)/CAST(Gms as FLOAT) DESC;

-- On average, how many turnovers did a particular team commit?

SELECT TeamName, CAST(TOV as FLOAT)/CAST(Gms as FLOAT) as tovPerGm
FROM teams
INNER JOIN team_stats 
ON teams.Teams_id = team_stats.Teams_id;

-- show all the coach with their teams
use nba;
Select c.Name, t.TeamName, ts.Points, ts.TeamScore from coaches c
inner join teams t
on c.teams_id = t.teams_id
inner join teams_has_top_scorers tt
on t.teams_id = tt.teams_id
inner join top_scorers ts
on ts.top_scorer_id = tt.top_scorer_id;

