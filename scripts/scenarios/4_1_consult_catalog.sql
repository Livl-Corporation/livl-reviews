SELECT *
FROM Product
WHERE createdBy IN (
    SELECT following
    FROM Subscription
    WHERE follower = 4
) AND published = true;