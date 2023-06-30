SELECT username, avatarUrl, description
FROM User
WHERE userId = (
    SELECT createdBy
    FROM Request
    WHERE requestId = 3
);
