CREATE PROCEDURE CreateReview
    @note INT,
    @title VARCHAR(255),
    @message TEXT,
    @createdBy INT,
    @relatedTo INT,
    @reviewId INT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO Review (note, title, message, createdOn, createdBy, relatedTo)
    VALUES (@note, @title, @message, NOW(), @createdBy, @relatedTo);

    SET @reviewId = SCOPE_IDENTITY();
END
