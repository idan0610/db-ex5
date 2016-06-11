SELECT DISTINCT O.oname
FROM Organization O NATURAL JOIN Donated D
GROUP BY O.oname
HAVING COUNT(D.cid) >= 4
ORDER BY O.oname;