-- Analysis
-- What skills technically win volleyball games? What skills have direct corrleations?

-- SELECT team, win_loss_pctg, conference, RANK() OVER(PARTITION BY conference ORDER BY win_loss_pctg DESC) AS rank
-- FROM team_stats
-- ORDER BY conference, rank;

-- DROP TABLE IF EXISTS most_aces_per_conference;


-- SELECT * FROM team_stats
-- ORDER BY win_loss_pctg DESC;

-- CREATE TABLE most_aces_per_conference AS 
-- WITH RankedTeams AS(
--     SELECT team, conference, aces_per_set, RANK() OVER(PARTITION BY conference ORDER BY aces_per_set DESC) AS rank
--     FROM team_stats
-- )
-- SELECT * 
-- FROM RankedTeams
-- WHERE rank <= 5;


-- CREATE TABLE most_assists_per_conference AS 
-- WITH RankedTeams AS(
--     SELECT team, conference, assists_per_set, RANK() OVER(PARTITION BY conference ORDER BY assists_per_set DESC) AS rank
--     FROM team_stats
-- )
-- SELECT * 
-- FROM RankedTeams
-- WHERE rank <= 5;

CREATE TABLE most_team_attacks_per_conference AS 
WITH RankedTeams AS(
    SELECT team, conference, team_attacks_per_set, RANK() OVER(PARTITION BY conference ORDER BY team_attacks_per_set DESC) AS rank
    FROM team_stats
)
SELECT * 
FROM RankedTeams
WHERE rank <= 5;



