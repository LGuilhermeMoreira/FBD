SELECT 
    teams.name as TeamName,
    COUNT(matches.id) as MatchesPlayed,
    SUM(CASE 
        WHEN matches.team_1_goal > matches.team_2_goal AND matches.Team_one = teams.id THEN 1
        WHEN matches.team_2_goal > matches.team_1_goal AND matches.Team_two = teams.id THEN 1
        ELSE 0
    END) as Wins,
    SUM(CASE 
        WHEN matches.team_1_goal < matches.team_2_goal AND matches.Team_one = teams.id THEN 1
        WHEN matches.team_2_goal < matches.team_1_goal AND matches.Team_two = teams.id THEN 1
        ELSE 0
    END) as Losses,
    SUM(CASE 
        WHEN matches.team_1_goal = matches.team_2_goal THEN 1
        ELSE 0
    END) as Draws,
    SUM(CASE 
        WHEN matches.team_1_goal > matches.team_2_goal AND matches.Team_one = teams.id THEN 3
        WHEN matches.team_2_goal > matches.team_1_goal AND matches.Team_two = teams.id THEN 3
        WHEN matches.team_1_goal = matches.team_2_goal THEN 1
        ELSE 0
    END) as Points
FROM 
    teams
LEFT JOIN 
    matches ON teams.id = matches.Team_one OR teams.id = matches.Team_two
GROUP BY 
    teams.id, teams.name
ORDER BY 
    Points DESC;
