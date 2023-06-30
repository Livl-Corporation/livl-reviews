<h1 align="center"><img src="img/Livl_Reviews.png" width="224px"/><br/> 
  Report - Livl Review 
</h1>  
<p align="center">Veuillez trouver notre rapport concernant nos choix de conception et nos différents scripts nécessaires au bon fonctionnement de notre base de données.</p>  

## **📖 Table des matières**

- [**💡 Conception**](#💡-conception)
- [**📚 Scripts**](#📚-scripts)
    - [**Création de tables**](#création-de-tables)
    - [**Triggers**](#triggers)
    - [**Procédures stockées**](#procédures-stockées)
    - [**Scripts de scénarios**](#scripts-de-scénarios)

# **💡 Conception**

> [Conceptual model est disponible ici.](models/conceptual.puml)

> [Logical model est disponible ici.](models/logical.md)

![Conceptual Data Model](models/conceptual.png)

## **Entités principales**

- `User` : Représente les utilisateurs de l'application. Ils ont des attributs tels que le nom d'utilisateur, l'e-mail, le mot de passe, la description, l'URL de l'avatar, le rôle et la date de création. Un utilisateur est d'office considéré comme un testeur, mais avec son attribut de rôle, il peut également être un agent, qui lui donneront des droits spécifiques pour poster des produits sur la platforme.
- `Invitation` : Représente les invitations envoyées par un agent à un testeur, qui permet au testeur de pouvoir accèder à la liste des produits à tester. Elle contient des informations telles que la date de création et le message de l'invitation.
- `Subscription` : Représente les abonnements d'un testeur lui permettant d'avoir accès à la liste des produits d'un ou plusieurs agents. Elle indique si l'abonnement est actif, la date de désactivation et la date de création.
- `Request` : Représente les demandes de tests créées par les utilisateurs (testeur). Elle contient la date de création et est liée à un produit spécifique et à l'utilisateur qui l'a créée.
- `RequestEvent` : Représente les événements associés à une demande spécifique. Elle contient un message, un état (qui peut-être si une demande a été refusé, accepté, envoyé, commandé, etc...) et la date de création.
- `Review` : Représente les avis créés par les utilisateurs testeurs. Elle comprend des attributs tels que la note, le titre, le message de l'avis et la date de création. 
- `Condition` : Représente les conditions associées aux produits à tester. Elle contient des informations telles que le nom de la condition, le taux de remboursement, le mode de remboursement, le message et des indicateurs pour les images et les vidéos requises. Elle est liée à l'utilisateur qui l'a créée.
- `Product` : Représente les produits disponibles. Elle contient des informations telles que le nom, la description, le prix, la quantité disponible, l'état de publication et le lien vers le produit. Elle est associée à un agent qui l'a créée et à une condition spécifique.
- `Media` : Représente les médias (images, vidéos, etc.) liés aux produits et aux avis. Elle contient une légende et une URL vers le média. Elle peut être liée à un produit ou à une critique spécifique.

## **Relations**

- `Invitation` : Une invitation est associée à un expéditeur et à un destinataire, tous deux étant des utilisateurs (agent à testeur).
- `Subscription` : Une souscription est liée à un utilisateur (testeur) qui est un suiveur (follower) et à un autre utilisateur (agent) qu'il suit (following).
- `Request` : Une demande est créée par un testeur et est associée à un produit spécifique et à un agent destinataire.
- `RequestEvent` : Un événement de demande est lié à une demande spécifique.
- `Review` : Une critique est créée par un utilisateur
- `Condition` : Une condition est créée par un utilisateur.
- `Product` : Un produit est créé par un agent et est associé à une condition spécifique.
- `Media` : Un média est lié à un produit ou à une critique spécifique.

# **📚 Scripts**

## **Création de tables**

> [Le script de création de tables est disponible ici.](scripts/setup/create_tables.sql)

- Nous avons créé des contraintes pour quelques tables :
    - Pour créer un `Produit`, une `Condition`, envoyer une `Invitation` ou recevoir une `Demande`, vous devrez avoir le rôle d'`agent`.

- Nous avons ajouté `ON DELETE CASCADE` pour supprimer toutes les données liées à l'`Utilisateur` lorsque nous le supprimons. Sauf sur la table `DEMANDE`, car nous voulons conserver la `Demande` même si l'`Utilisateur` est supprimé afin d'éviter tout problème sur la page Web pour savoir ce qui s'est passé.

- L'attribut `createdOn` est une colonne qui est automatiquement remplie avec la date et l'heure actuelles. 

- Concernant les différents ID, nous avons utilisé `AUTO_INCREMENT` pour que l'ID soit automatiquement incrémenté à chaque fois qu'une nouvelle ligne est insérée dans la table.

- On regatrde si le rôle de l'utilisateur est soit un `agent` ou un `user`, cela évite qu'on puisse mettre une autre valeur que celles-ci.

- `ProductMedia` et `ReviewMedia` ont des clés primaires composées, car un produit peut avoir plusieurs médias et une critique peut avoir plusieurs médias.

## **Insertion des données** 

> [Le script d'insertion de données est disponible ici.](scripts/setup/insert_tables.sql)

- Nous avons crée un script d'insertion de quelques données afin d'avoir une base de données avec des données de test.

## **Triggers**

> [Les scripts de triggers sont disponibles ici.](scripts/triggers/)

- On crée un trigger que le produit qu'on essaye de demander en créant une `REQUEST` est disponible en regardant si les tests en cours sur ce produit est possible. Si ce n'est pas le cas, on ne peut pas créer la `REQUEST`.

## **Procédures stockées**

> [Les scripts de procédures sont disponibles ici.](scripts/procedures/)

- Nous avons créé une procédure pour créer un `Produit` afin qu'elle puisse renvoyer l'`productId` du produit créé. Cela sera utile pour créer un `Média` lié au produit, sinon nous ne serions pas en mesure de connaître l'`productId` du produit auquel nous voulons lier le `Média`.

Et nous avons suivi la même logique pour la procédure de `Révision`.

## **Scripts de scénarios**

> [Les scripts de scénarios sont disponibles ici.](scripts/scenarios/)

- Selon les scénarios que nous avons [rédigés](README.md), nous avons créé des scripts pour les exécuter.