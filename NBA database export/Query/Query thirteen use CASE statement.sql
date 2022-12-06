use nba;
SELECT Name, Age,
CASE WHEN Age > 30 THEN 'The Player age is greater than 30'
WHEN Age = 30 THEN 'The Players age is equal to 30'
ELSE 'The age is under 30'
END AS Age
FROM players;