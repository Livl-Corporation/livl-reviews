INSERT INTO User (username, email, password, description, avatarUrl, role)
VALUES
('Julien', 'julien@crampte.com', 'crampte', 'Quoi ? Quoicoubae', 'https://loldecrampte/avatar.jpg', ''),
('Franck', 'franck@crampte.com', 'crampte', 'Quoi ? feur', 'https://loldecrampte/avatar.jpg', ''),
('José', 'josé@crampte.com', 'admin', 'CC je vends des stylos', 'https://www.gagnerauxparissportifs.com/wp-content/uploads/2020/03/stylo-geule.png', 'agent');

INSERT INTO Invitation (message, sender, recipient)
VALUES
('Produits éclairages', 3, 1),
('Produits de HUB USB', 3, 2);

INSERT INTO Condition (name, refundRate, refundMode, message, requirePictures, requireVideos, createdBy)
VALUES
('Condition de stylo 6 couleurs', 0.8, 'Full refund', 'Stylo 6 couleurs', 1, 0, 3),
('Condition de stylo camera', 0.5, 'Partial refund', 'Stylo camera', 0, 1, 3);

INSERT INTO Product (name, description, price, availableQuantity, published, link, conditionId, createdBy)
VALUES
('Product A', 'Stylo 6 couleurs', 10.99, 50, 1, 'https://example.com/productA', 1, 1),
('Product B', 'Stylo camera', 19.99, 25, 1, 'https://example.com/productB', 2, 1);

INSERT INTO Request (createdBy, recipient, productId)
VALUES
(1, 3, 1),
(2, 3, 2);

INSERT INTO RequestEvent (message, state, requestId, createdBy)
VALUES
('Request created by user Julien', 'open', 1, 1),
('Request accepted by agent', 'accepted', 2, 3);
('Product received by user', 'received', 1, 1),
('Request created by user Franck', 'open', 2, 2);


INSERT INTO Review (note, title, message, createdBy, relatedTo)
VALUES
('Dirty product', 'Ce produit est nul a chier, jen nez marre le stylo ya que 2 couleurs sur 6 qui marche ptrn dmerde', 1, 1),
('Good product', 'Jai pu filmer les locaux de airbus alors que le telephone etait interdit, merci', 2, 2);

INSERT INTO Subscription (active, disabledOn, follower, following)
VALUES
(1, NULL, 1, 3),r
(1, NULL, 2, 3);

INSERT INTO Media (caption, url)
VALUES
('Product Stylo 6 couleurs', 'https://example.com/productA/image1.jpg'),
('Product A Stylo 6 couleurs v2', 'https://example.com/productA/image2.jpg'),
('Review stylo camera', 'https://example.com/review1/image.jpg');

INSERT INTO ProductMedia (productId, mediaId)
VALUES
(1, 1),
(1, 2);

INSERT INTO ReviewMedia (reviewId, mediaId)
VALUES
(1, 3);