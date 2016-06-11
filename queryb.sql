SELECT DISTINCT C1.cname 
FROM Contributor C1 NATURAL JOIN Organization O1 NATURAL JOIN Donated D1
WHERE
	O1.oname = 'Latet' and C1.cid IN 
	(SELECT C2.cid
	FROM Contributor C2 NATURAL JOIN ORGANIZATION O2 NATURAL JOIN Donated D2
	WHERE
		O2.oname = 'Elem')
ORDER BY C1.cname;