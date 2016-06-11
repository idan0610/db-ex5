SELECT DISTINCT C1.cname
FROM Contributor C1
WHERE NOT EXISTS
	(SELECT D1.aid
	FROM Donated D1 NATURAL JOIN Contributor C2 
	WHERE C2.cname = 'Rothschild'
	AND D1.aid NOT IN
		(SELECT D2.aid 
		FROM Donated D2
		WHERE D2.cid = C1.cid))
ORDER BY C1.cname;