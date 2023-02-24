-- We want to get the overall stats for each team (matches, wins, draws, losses)


-- FC Barcelona overall stats:
SELECT season,
COUNT (Result) AS partidos,
COUNT (CASE WHEN Result = "W" THEN 1 END) AS victorias,
COUNT (CASE WHEN Result = "L" THEN 1 END) AS derrotas,
COUNT (CASE WHEN Result = "D" THEN 1 END) As empates
FROM mateu_1722.rm_fcb_1722
WHERE Team = "FC Barcelona"

-- Let's now group the stats by season for Barcelona, just to have a different view
SELECT season,
COUNT (Result) AS partidos,
COUNT (CASE WHEN Result = "W" THEN 1 END) AS victorias,
COUNT (CASE WHEN Result = "L" THEN 1 END) AS derrotas,
COUNT (CASE WHEN Result = "D" THEN 1 END) As empates
FROM mateu_1722.rm_fcb_1722
WHERE Team = "FC Barcelona"
GROUP BY season
ORDER BY season

-- Real Madrid overall stats:
SELECT season,
COUNT (Result) AS partidos,
COUNT (CASE WHEN Result = "W" THEN 1 END) AS victorias,
COUNT (CASE WHEN Result = "L" THEN 1 END) AS derrotas,
COUNT (CASE WHEN Result = "D" THEN 1 END) As empates
FROM mateu_1722.rm_fcb_1722
WHERE Team = "Real Madrid CF"

-- Real Madrid stats visualized by season
SELECT season,
COUNT (Result) AS partidos,
COUNT (CASE WHEN Result = "W" THEN 1 END) AS victorias,
COUNT (CASE WHEN Result = "L" THEN 1 END) AS derrotas,
COUNT (CASE WHEN Result = "D" THEN 1 END) As empates
FROM mateu_1722.rm_fcb_1722
WHERE Team = "Real Madrid CF"
GROUP BY season
ORDER BY season


---------------------------
-- Now that we've got a grasp on the general data for each team
-- let's now look at the object study referees
---------------------------


--- Antonio Mateu Lahoz (FC Barcelona)
SELECT season,
COUNT (Result) AS partidos,
COUNT (CASE WHEN Result = "W" THEN 1 END) AS victorias,
COUNT (CASE WHEN Result = "L" THEN 1 END) AS derrotas,
COUNT (CASE WHEN Result = "D" THEN 1 END) As empates
FROM mateu_1722.rm_fcb_1722
WHERE Referee = "Antonio Matéu Lahoz" AND Team = "FC Barcelona"

--- Antonio Mateu Lahoz (Real Madrid CF)
SELECT season,
COUNT (Result) AS partidos,
COUNT (CASE WHEN Result = "W" THEN 1 END) AS victorias,
COUNT (CASE WHEN Result = "L" THEN 1 END) AS derrotas,
COUNT (CASE WHEN Result = "D" THEN 1 END) As empates
FROM mateu_1722.rm_fcb_1722
WHERE Referee = "Antonio Matéu Lahoz" AND Team = "Real Madrid CF"

--- Jesús Gil (FC Barcelona)
SELECT season,
COUNT (Result) AS partidos,
COUNT (CASE WHEN Result = "W" THEN 1 END) AS victorias,
COUNT (CASE WHEN Result = "L" THEN 1 END) AS derrotas,
COUNT (CASE WHEN Result = "D" THEN 1 END) As empates
FROM mateu_1722.rm_fcb_1722
WHERE Referee = "Jesús Gil" AND Team = "FC Barcelona"

--- Jesús Gil (Real Madrid CF)
SELECT season,
COUNT (Result) AS partidos,
COUNT (CASE WHEN Result = "W" THEN 1 END) AS victorias,
COUNT (CASE WHEN Result = "L" THEN 1 END) AS derrotas,
COUNT (CASE WHEN Result = "D" THEN 1 END) As empates
FROM mateu_1722.rm_fcb_1722
WHERE Referee = "Jesús Gil" AND Team = "Real Madrid CF"