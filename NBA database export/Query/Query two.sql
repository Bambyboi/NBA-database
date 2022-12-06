-- Which player played on the most teams?

Select p.Players_id, p.Name, ps.Tm, count(*) from players as p
inner join player_stats as ps
on p.Players_id = ps.Players_id
group by p.Name
order by p.Players_id asc;
