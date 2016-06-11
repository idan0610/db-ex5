SELECT DISTINCT C.cname 
FROM Contributor C, Organization O, Donated D
WHERE 
	C.cid = D.cid AND D.aid = O.aid and estYear < 1980
ORDER BY C.cname;