CREATE DATABASE LivlReview;

USE LivlReview;

CREATE TABLE User (
    userId INT PRIMARY KEY,
    username VARCHAR(255),
    email VARCHAR(255),
    password VARCHAR(255),
    description TEXT,
    avatarUrl VARCHAR(255),
    role VARCHAR(255),
    createdOn DATETIME
);

CREATE TABLE Invitation (
    invitationId INT PRIMARY KEY,
    createdOn DATETIME,
    message TEXT,
    sender INT,
    recipient INT,
    FOREIGN KEY (sender) REFERENCES User(userId),
    FOREIGN KEY (recipient) REFERENCES User(userId)
);

CREATE TABLE Condition (
    conditionId INT PRIMARY KEY,
    name VARCHAR(255),
    refundRate FLOAT,
    refundMode VARCHAR(255),
    message TEXT,
    requirePictures BOOLEAN,
    requireVideos BOOLEAN,
    createdBy INT,
    FOREIGN KEY (createdBy) REFERENCES User(userId)
);

CREATE TABLE Product (
    productId INT PRIMARY KEY,
    name VARCHAR(255),
    description TEXT,
    price DECIMAL(10, 2),
    availableQuantity INT,
    published BOOLEAN,
    link VARCHAR(255),
    createdOn DATETIME,
    conditionId INT,
    createdBy INT,
    FOREIGN KEY (conditionId) REFERENCES Condition(conditionId),
    FOREIGN KEY (createdBy) REFERENCES User(userId)
);

CREATE TABLE Request (
    requestId INT PRIMARY KEY,
    createdOn DATETIME,
    createdBy INT,
    recipient INT,
    productId INT,
    FOREIGN KEY (createdBy) REFERENCES User(userId),
    FOREIGN KEY (recipient) REFERENCES User(userId),
    FOREIGN KEY (productId) REFERENCES Product(productId)
);

CREATE TABLE RequestEvent (
    eventId INT PRIMARY KEY,
    message TEXT,
    state VARCHAR(255),
    createdOn DATETIME,
    requestId INT,
    FOREIGN KEY (requestId) REFERENCES Request(requestId)
);

CREATE TABLE Review (
    reviewId INT PRIMARY KEY,
    note INT,
    title VARCHAR(255),
    message TEXT,
    createdOn DATETIME,
    createdBy INT,
    FOREIGN KEY (createdBy) REFERENCES User(userId)
);

CREATE TABLE Subscription (
    subscriptionId INT PRIMARY KEY,
    active BOOLEAN,
    disabledOn DATETIME,
    createdOn DATETIME,
    follower INT,
    following INT,
    FOREIGN KEY (follower) REFERENCES User(userId),
    FOREIGN KEY (following) REFERENCES User(userId)
);

CREATE TABLE Media (
    mediaId INT PRIMARY KEY,
    caption TEXT,
    url VARCHAR(255)
);

CREATE TABLE ProductMedia (
    productId INT,
    mediaId INT,
    FOREIGN KEY (productId) REFERENCES Product(productId),
    FOREIGN KEY (mediaId) REFERENCES Media(mediaId)
);

CREATE TABLE ReviewMedia (
    reviewId INT,
    mediaId INT,
    FOREIGN KEY (reviewId) REFERENCES Review(reviewId),
    FOREIGN KEY (mediaId) REFERENCES Media(mediaId)
);
