CREATE DATABASE LivlReview;

USE LivlReview;

CREATE TABLE User (
    userId INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255),
    email VARCHAR(255),
    password VARCHAR(255),
    description TEXT,
    avatarUrl VARCHAR(255),
    role VARCHAR(255),
    createdOn DATETIME
);

CREATE TABLE Invitation (
    invitationId INT AUTO_INCREMENT PRIMARY KEY,
    createdOn DATETIME,
    message TEXT,
    createdBy INT,
    email VARCHAR(255),
);

ALTER TABLE Invitation
ADD CONSTRAINT fk_invitation_sender
FOREIGN KEY (createdBy)
REFERENCES User(userId)
CHECK (role = 'agent')
ON DELETE CASCADE;

CREATE TABLE Condition (
    conditionId INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    refundRate FLOAT,
    refundMode VARCHAR(255),
    message TEXT,
    requirePictures BOOLEAN,
    requireVideos BOOLEAN,
    createdBy INT,
);

ALTER TABLE Condition
ADD CONSTRAINT fk_condition_createdBy
FOREIGN KEY (createdBy)
REFERENCES User(userId)
CHECK (role = 'agent')
ON DELETE CASCADE;

CREATE TABLE Product (
    productId INT AUTO_INCREMENT PRIMARY KEY,
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
);

ALTER TABLE Product
ADD CONSTRAINT fk_product_createdBy
FOREIGN KEY (createdBy)
REFERENCES User(userId)
CHECK (role = 'agent')
ON DELETE CASCADE;

CREATE TABLE Request (
    requestId INT AUTO_INCREMENT PRIMARY KEY,
    createdOn DATETIME,
    createdBy INT,
    recipient INT,
    productId INT,
    FOREIGN KEY (productId) REFERENCES Product(productId)
);

ALTER TABLE Request
ADD CONSTRAINT fk_request_recipient
FOREIGN KEY (recipient)
REFERENCES User(userId)
CHECK (role = 'agent');

CREATE TABLE RequestEvent (
    eventId INT AUTO_INCREMENT PRIMARY KEY,
    message TEXT,
    state VARCHAR(255),
    createdOn DATETIME,
    requestId INT,
    createdBy INT,
    FOREIGN KEY (createdBy) REFERENCES User(userId)
    FOREIGN KEY (requestId) REFERENCES Request(requestId)
);

CREATE TABLE Review (
    reviewId INT AUTO_INCREMENT PRIMARY KEY,
    note INT,
    title VARCHAR(255),
    message TEXT,
    createdOn DATETIME,
    createdBy INT,
    relatedTo INT
    FOREIGN KEY (relatedTo) REFERENCES Request(requestId)
);

CREATE TABLE Subscription (
    subscriptionId AUTO_INCREMENT INT PRIMARY KEY,
    active BOOLEAN,
    disabledOn DATETIME,
    createdOn DATETIME,
    follower INT,
    following INT,
);

ALTER TABLE Subscription
ADD CONSTRAINT fk_subscription_following
FOREIGN KEY (following)
REFERENCES User(userId)
CHECK (role = 'agent')
ON DELETE CASCADE;

CREATE TABLE Media (
    mediaId INT AUTO_INCREMENT PRIMARY KEY,
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