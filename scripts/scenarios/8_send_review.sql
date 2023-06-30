INSERT INTO Review (note, title, message, createdOn, createdBy, relatedTo)
VALUES (5, 'Great Product', 'This is a fantastic product ! Je vous écris en effet de ma plus belle plume pour attester que mon usage de ce stylo fut une expérience inestimable ! Mon nouveau livre "La stylographie" est bel et bien terminé et désormais disponible en librairie ;)', NOW(), 4, 3);

INSERT INTO Media (caption, url)
VALUES
    ("Le stylo est jolie", "https://m.media-amazon.com/images/I/41mmIWN9fzL._AC_SL1422_.jpg")
    ("Il écrit si bien !", "https://m.media-amazon.com/images/I/41OQVPFk5wL._AC_SL1422_.jpg")

INSERT INTO ReviewMedia(reviewId, mediaID)
VALUES
    (3, 5)
    (3, 6)

INSERT INTO RequestEvent (message, state, createdOn, requestId, createdBy)
VALUES ("J'ai posté mon commentaire, merci beaucoup !", "reviewed", NOW(), 3, 3);