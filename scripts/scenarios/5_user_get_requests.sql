SELECT r.requestId, r.productId, re.message, re.state, re.createdOn
FROM Request r
JOIN RequestEvent re ON r.requestId = re.requestId
WHERE r.createdBy = 4
AND re.createdOn = (SELECT MAX(createdOn) FROM RequestEvent WHERE requestId = r.requestId)
GROUP BY r.requestId
ORDER BY re.createdOn DESC;
