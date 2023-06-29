
# Report - Livl Reviews

# **💡Conception**

### **Conceptual diagram**

- Each `User` is a basic tester, and then there are special Users who are `Agent`s and have additional rights to post products.

- The "Invitation" entity is used to represent invitations sent by agents and received by reviewers. The relationship between "Agent" and "Invitation" is a one-to-many relationship, as is the relationship between "Reviewer" and "Invitation".

- "RequestEvent" class records the events associated with a test request.

- The "Review" and "Product" entities represent, respectively, the reviews written by testers and the products available for testing. There is a one-to-many relationship between "Product" and "Condition", where each product is associated with a specific test condition.

- Condition" and "Subcription" entities are also included in the diagram, representing respectively the test conditions for a product and the subscriptions of agents and testers.

### **Logical diagram**

