
# Report - Livl Reviews

# **💡Conception**

### **Conceptual diagram**

Entités principales :

- `User` : Représente les utilisateurs de l'application. Ils ont des attributs tels que le nom d'utilisateur, l'e-mail, le mot de passe, la description, l'URL de l'avatar, le rôle et la date de création. Un utilisateur est d'office considéré comme un testeur, mais avec son attribut de rôle, il peut également être un agent, qui lui donneront des droits spécifiques pour poster des produits sur la platforme.
- `Invitation` : Représente les invitations envoyées par un agent à un testeur, qui permet au testeur de pouvoir accèder à la liste des produits à tester. Elle contient des informations telles que la date de création et le message de l'invitation.
- `Subscription` : Représente les abonnements d'un testeur lui permettant d'avoir accès à la liste des produits d'un ou plusieurs agents. Elle indique si l'abonnement est actif, la date de désactivation et la date de création.
- `Request` : Représente les demandes de tests créées par les utilisateurs (testeur). Elle contient la date de création et est liée à un produit spécifique et à l'utilisateur qui l'a créée.
- `RequestEvent` : Représente les événements associés à une demande spécifique. Elle contient un message, un état (qui peut-être si une demande a été refusé, accepté, envoyé, commandé, etc...) et la date de création.
- `Review` : Représente les avis créés par les utilisateurs testeurs. Elle comprend des attributs tels que la note, le titre, le message de l'avis et la date de création. 
- `Condition` : Représente les conditions associées aux produits à tester. Elle contient des informations telles que le nom de la condition, le taux de remboursement, le mode de remboursement, le message et des indicateurs pour les images et les vidéos requises. Elle est liée à l'utilisateur qui l'a créée.
- `Product` : Représente les produits disponibles. Elle contient des informations telles que le nom, la description, le prix, la quantité disponible, l'état de publication et le lien vers le produit. Elle est associée à un agent qui l'a créée et à une condition spécifique.
- `Media` : Représente les médias (images, vidéos, etc.) liés aux produits et aux avis. Elle contient une légende et une URL vers le média. Elle peut être liée à un produit ou à une critique spécifique.

Relations :

- `Invitation` : Une invitation est associée à un expéditeur et à un destinataire, tous deux étant des utilisateurs (agent à testeur).
- `Subscription` : Une souscription est liée à un utilisateur (testeur) qui est un suiveur (follower) et à un autre utilisateur (agent) qu'il suit (following).
- `Request` : Une demande est créée par un testeur et est associée à un produit spécifique et à un agent destinataire.
- `RequestEvent` : Un événement de demande est lié à une demande spécifique.
- `Review` : Une critique est créée par un utilisateur
- `Condition` : Une condition est créée par un utilisateur.
- `Product` : Un produit est créé par un agent et est associé à une condition spécifique.
- `Media` : Un média est lié à un produit ou à une critique spécifique.

### **Logical diagram**


# **📚Database**

### Creation of tables 

- We created constraints for few tables : 
    - To create a `Product`, a `Condition`, to send an `Invitation` or to receive a `Request` you  will need to have the role `agent`. 

### Creation of triggers

- We created a trigger to delete any data linked to the `User` when we delete it.

