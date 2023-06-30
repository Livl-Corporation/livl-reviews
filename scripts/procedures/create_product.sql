CREATE PROCEDURE CreateNewProduct
    @name VARCHAR(255),
    @description TEXT,
    @price DECIMAL(10, 2),
    @availableQuantity INT,
    @published BIT,
    @link VARCHAR(255),
    @conditionId INT,
    @createdBy INT,
    @productId INT OUTPUT
AS
BEGIN
    -- Insert the new product
    INSERT INTO Product (name, description, price, availableQuantity, published, link, conditionId, createdBy, createdOn)
    VALUES (@name, @description, @price, @availableQuantity, @published, @link, @conditionId, @createdBy, NOW());

    -- Get the last inserted product ID
    SET @productId = SCOPE_IDENTITY();
END
