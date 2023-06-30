INSERT INTO Product (name, description, price, availableQuantity, published, link, createdOn, conditionId, createdBy)
VALUES ('Stylo à plume original', 'Ce stylo est fabriqué en france.', 89.99, 5, true, 'https://amzn.to/43lfd2x', NOW(), 1, 3);

INSERT INTO Media (caption, url)
VALUES(NULL, "https://m.media-amazon.com/images/I/3133FKahikL._AC_SL1422_.jpg")

INSERT INTO ProductMedia (productId, mediaId)
VALUES(3, 4)