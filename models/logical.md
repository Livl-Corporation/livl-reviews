# Logical Data Model

> Check out our [Conceptual Data Model](conceptual.puml) for more information about the data model.

**User**(
    <u>userId</u>, 
    username, 
    email, 
    password, 
    description, 
    avatarUrl, 
    role,
    createdOn)

**Invitation**(
    <u>invitationId</u>, 
    createdOn, 
    message, 
    sender<sub>FK</sub>, 
    recipient<sub>FK</sub>)

**Condition**(
    <u>conditionId</u>,
    name,
    refundRate, 
    refundMode, 
    message, 
    requirePictures, 
    requireVideos,
    createdBy<sub>FK</sub>)

**Product**(
    <u>productId</u>, 
    name, 
    description, 
    price, 
    availableQuantity, 
    published, 
    link, 
    createdOn,
    conditionId<sub>FK</sub>, 
    createdBy<sub>FK</sub>)

**Request**(
    <u>requestId</u>, 
    createdOn
    createdBy<sub>FK</sub>, 
    recipient<sub>FK</sub>, 
    productId<sub>FK</sub>)

**RequestEvent**(
    <u>eventId</u>, 
    message, 
    state, 
    createdOn,
    requestId<sub>FK</sub>)

**Review**(
    <u>reviewId</u>, 
    note, 
    title, 
    message, 
    createdOn, 
    createdBy<sub>FK</sub>)

**Subscription**(
    <u>subscriptionId</u>, 
    active, 
    disabledOn,
    createdOn, 
    follower<sub>FK</sub>, 
    following<sub>FK</sub>) 

**Media**(
    <u>mediaId</u>
    caption,
    url)

**ProductMedia**(<u>
    productId<sub>FK</sub>
    mediaId<sub>FK</sub></u>)

**ReviewMedia**(<u>
    reviewId<sub>FK</sub>
    mediaId<sub>FK</sub></u>)