SELECT r.requestId, re.eventId, re.message, re.state, re.createdOn
FROM Request r
JOIN RequestEvent re ON r.requestId = re.requestId
WHERE r.recipient = 3
AND re.createdOn = (
    SELECT MAX(createdOn)
    FROM RequestEvent
    WHERE requestId = r.requestId
)
ORDER BY re.createdOn DESC;