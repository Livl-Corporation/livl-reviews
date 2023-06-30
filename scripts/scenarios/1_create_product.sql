DECLARE @newProductId INT;

EXEC CreateNewProduct
    @name = 'Stylo à plume original',
    @description = 'Ce stylo est fabriqué en france.',
    @price = 99.99,
    @availableQuantity = 5,
    @published = 1,
    @link = 'https://amzn.to/43lfd2x',
    @conditionId = 1,
    @createdBy = 3,
    @productId = @newProductId OUTPUT;

INSERT INTO Media (caption, url)
VALUES(NULL, "https://m.media-amazon.com/images/I/3133FKahikL._AC_SL1422_.jpg")

INSERT INTO ProductMedia (@newProductId, mediaId)
VALUES(3, 4)
