# Logical Data Model

> Check out our [Conceptual Data Model](conceptual.puml) for more information about the data model.

**User**(<u>userId</u>, username, email, password, signupDate, description, avatarUrl, userType)

**Invitation**(<u>invitationId</u>, date, message, senderId<sub>FK</sub>, targetId<sub>FK</sub>)

**Condition**(<u>conditionId</u>, refundRate, refundMode, message, requirePictures, requireVideos,createdBy<sub>FK</sub>)

**Product**(<u>productId</u>, name, description, price, pictures, availableQuantity, published, createdOn, link, conditionId<sub>FK</sub>, createdBy<sub>FK</sub>)

**Request**(<u>requestId</u>, createdBy<sub>FK</sub>, sentTo<sub>FK</sub>, productId<sub>FK</sub>)

**RequestEvent**(<u>requestEventId</u>, date, message, state, requestId<sub>FK</sub>)

**Review**(<u>reviewId</u>, note, title, medias, message, createdOn, createdBy<sub>FK</sub>)

**Subscription**(<u>subscriptionId</u>, active, createdOn, disabledOn, agentID<sub>FK</sub>, userId<sub>FK</sub>) 