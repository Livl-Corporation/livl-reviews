CREATE DATABASE LivlReview;

USE LivlReview;

CREATE TABLE User (
    userId INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    description TEXT,
    avatarUrl VARCHAR(255),
    role VARCHAR(255) CHECK (role IN ('user', 'agent')) DEFAULT 'user',
    createdOn DATETIME DEFAULT GETDATE()
);

CREATE TABLE Invitation (
    invitationId INT AUTO_INCREMENT PRIMARY KEY,
    createdOn DATETIME DEFAULT GETDATE(),
    message TEXT,
    createdBy INT NOT NULL,
    email VARCHAR(255) NOT NULL,
    FOREIGN KEY (createdBy)
        REFERENCES User(userId)
        CHECK (role = 'agent')
        ON DELETE CASCADE
);

CREATE TABLE Condition (
    conditionId INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    refundRate FLOAT NOT NULL,
    refundMode VARCHAR(255) NOT NULL,
    message TEXT,
    requirePictures BOOLEAN NOT NULL,
    requireVideos BOOLEAN NOT NULL,
    createdBy INT NOT NULL,
    FOREIGN KEY (createdBy)
        REFERENCES User(userId)
        CHECK (role = 'agent')
        ON DELETE CASCADE
);

CREATE TABLE Product (
    productId INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    availableQuantity INT NOT NULL,
    published BOOLEAN NOT NULL,
    link VARCHAR(255) NOT NULL,
    createdOn DATETIME DEFAULT GETDATE(),
    conditionId INT NOT NULL,
    createdBy INT NOT NULL,
    FOREIGN KEY (conditionId) 
        REFERENCES Condition(conditionId),
    FOREIGN KEY (createdBy)
        REFERENCES User(userId)
        CHECK (role = 'agent')
        ON DELETE CASCADE
);


CREATE TABLE Request (
    requestId INT AUTO_INCREMENT PRIMARY KEY,
    createdOn DATETIME DEFAULT GETDATE(),
    createdBy INT NOT NULL,
    recipient INT NOT NULL,
    productId INT NOT NULL,
    FOREIGN KEY (productId) 
        REFERENCES Product(productId),
    FOREIGN KEY (createdBy)
        REFERENCES User(userId)
    FOREIGN KEY (recipient)
        REFERENCES User(userId)
        CHECK (role = 'agent')
);

CREATE TABLE RequestEvent (
    eventId INT AUTO_INCREMENT PRIMARY KEY,
    message TEXT,
    state VARCHAR(255) NOT NULL,
    createdOn DATETIME DEFAULT GETDATE(),
    requestId INT NOT NULL,
    createdBy INT NOT NULL,
    FOREIGN KEY (createdBy) 
        REFERENCES User(userId),
    FOREIGN KEY (requestId) 
        REFERENCES Request(requestId)
        ON DELETE CASCADE
);

CREATE TABLE Review (
    reviewId INT AUTO_INCREMENT PRIMARY KEY,
    note INT NOT NULL,
    title VARCHAR(255) NOT NULL,
    message TEXT NOT NULL,
    createdOn DATETIME DEFAULT GETDATE(),
    createdBy INT NOT NULL,
    relatedTo INT NOT NULL,
    FOREIGN KEY (relatedTo) 
        REFERENCES Request(requestId) 
        ON DELETE CASCADE
);

CREATE TABLE Subscription (
    subscriptionId AUTO_INCREMENT INT PRIMARY KEY,
    active BOOLEAN NOT NULL,
    disabledOn DATETIME,
    createdOn DATETIME DEFAULT GETDATE(),
    follower INT NOT NULL,
    following INT NOT NULL,
    FOREIGN KEY (follower)
        REFERENCES User(userId)
        ON DELETE CASCADE,
    FOREIGN KEY (following)
        REFERENCES User(userId)
        CHECK (role = 'agent')
        ON DELETE CASCADE
);

CREATE TABLE Media (
    mediaId INT AUTO_INCREMENT PRIMARY KEY,
    caption TEXT,
    url VARCHAR(255) NOT NULL
);

CREATE TABLE ProductMedia (
    productId INT NOT NULL,
    mediaId INT NOT NULL,
    PRIMARY KEY (productId, mediaId),
    FOREIGN KEY (productId) 
        REFERENCES Product(productId)
        ON DELETE CASCADE,
    FOREIGN KEY (mediaId) 
        REFERENCES Media(mediaId)
        ON DELETE CASCADE
);

CREATE TABLE ReviewMedia (
    reviewId INT NOT NULL,
    mediaId INT NOT NULL,
    PRIMARY KEY (reviewId, mediaId),
    FOREIGN KEY (reviewId) 
        REFERENCES Review(reviewId)
        ON DELETE CASCADE,
    FOREIGN KEY (mediaId) 
        REFERENCES Media(mediaId)
        ON DELETE CASCADE
);