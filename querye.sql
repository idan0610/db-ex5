SELECT DISTINCT C.cname
FROM Contributor C
WHERE C.cid NOT IN
	(SELECT D.cid
	FROM Donated D
	WHERE D.donation < 50000)
ORDER BY C.cname;