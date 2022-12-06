-- Which player had the highest assist to turnover ratio?

SELECT players.Name, ast, tov, CAST(AST as FLOAT)/CAST(TOV as FLOAT) as astTovRatio
FROM player_stats
inner join players on player_stats.Players_id = players.Players_id
WHERE TOV > 0 AND AST > 0
ORDER BY astTovRatio DESC;