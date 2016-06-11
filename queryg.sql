SELECT DISTINCT MAX(D.donation) AS MaxDonation
FROM Donated D NATURAL JOIN Contributor C
WHERE C.cname = 'Bill Gates'
GROUP BY D.cid
UNION
SELECT 0
FROM Donated D NATURAL JOIN Contributor C
WHERE C.cname = 'Bill Gates'
HAVING COUNT(*) = 0
ORDER BY MaxDonation;