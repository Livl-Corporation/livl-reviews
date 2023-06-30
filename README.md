<h1 align="center"><img src="img/Livl_Reviews.png" width="224px"/><br/></h1>  
<p align="center">Modélisation d'une base de données pour une platforme de test de produits.</p>  

# **📖 Table des matières**

- [**📚 Cahier des charges**](#📚-cahier-des-charges)
    - [**💡 Contexte**](#💡-contexte)
    - [**⭐ Objectifs**](#⭐-objectifs)
    - [**🧾 Scénarios**](#🧾-scénarios)
    - [**🔢 Estimation**](#🔢-estimation-de-la-taille-des-données)

# 📚 Cahier des charges

## 💡 Contexte

Le commerce digital s’est largement développé ces dernières années au point qu’il a remplacé le commerce traditionnel dans certains domaines.

Désormais, les consommateurs du monde entier ont a leur disposition un gigantesque catalogue  de produits disponibles à l’achat. Ne pouvant pas voir ni essayer le produit en personne, leurs choix d’achats se feront surtout à partir des photos, de la description, mais surtout des avis clients du produit.

Avoir un produit bien noté est donc crucial pour les vendeurs d’e-commerce. C’est pour cela que la plupart d’entre eux sont prêts à envoyer gratuitement leurs produits à des testeurs afin qu’il rédigent des avis clients pour booster le lancement de leurs nouveaux produits.

Ces vendeurs ont donc besoin d’une plateforme leur permettant de gérer de manière simple et efficace les produits qu’ils envoient au testeurs, ainsi que les avis qu’ils réceptionnent de ces derniers.

## ⭐ Objectifs

Faciliter la collaboration entre le testeur et l’agent.

### Simplifier l’expérience du testeur

Le testeur doit pouvoir compléter son profil qui sera visible par les agents qui se chargent de vérifier les demandes de tests.

Il doit ensuite pouvoir consulter la liste des produits disponibles ainsi que les conditions du test.

Lorsqu’un produit l’intéresse, il doit pouvoir faire une demande de test afin de recevoir le produit chez lui.

Il doit pouvoir consulter l’état de ses demandes en cours, et être notifié lorsque l’état de l’une d’entre elle est mit à jour.

Lorsqu’une demande est acceptée, il doit avoir accès à une page lui permettant d’envoyer son commentaire. Si après un certain délai le testeur n’a pas encore soumis son commentaire, l’application doit lui envoie un rappel afin qu’il pense à rédiger son avis.

Enfin, il doit pouvoir consulter l’historiques des produits qu’il a testé.

### Faciliter le travail de l’agent

L’agent doit pouvoir gérer les produits disponibles en test. Pour chaque produit, il y ajoute son nom, sa description, son prix initiale, des photos ainsi que la quantité mise à disposition en test.

Il doit également pouvoir determiner quels testeurs sont inviter à consulter son catalogue de produit.

Il réceptionne les demandes de tests soumises par les testeurs et peut étudier le profil du demandeur afin d’accepter ou non la demande.

Enfin, il reçoit les avis rédigés par les testeurs et peut clôturer le test.

## 🧾 Scénarios

1. Assis sur sa chaise de bureau verte, José, travaillant comme agent de tests pour une éminente boutique en ligne de stylos, est interrompu par la voix de son collaborateur qui l’informe qu’il cherche a obtenir des avis clients sur le dernier modèle de stylo de son entreprise. José pris la situation en main et publia une offre de test sur sa plateforme de tests de produit préféré : Livl Reviews ©.
2. José, soucieux de trouver rapidement un testeur pour son dernier modèle de stylo, décide d’inviter un testeur dont il a obtenu l’email via un confrère à accéder à son catalogue de produit à tester. Il se rend sur la plateforme, entre l’adresse email du testeur et fait partir l’invitation.
3. Dimanche matin, 6h35. Le cri du coq retenti. Du haut de sa jolie maison de campagne, un homme se reveille du bon pied et regarde au loin les rayons du soleils qui commençaient à transpercer les cimes des sapins. Après s’être délecté d’un délicieux café, il démarre sa bécane. L’homme se dit que l’eau a coulé sous les ponts depuis la dernière fois qu’il du consulter sa boite mail.

    Cet homme, c’est Bilou, un passionné de littérature. Il s’est retiré dans la jolie bourgade de Souffelweiyersheim à sa retraite.

    Il constate qu’il a reçu un email l’invitant à rejoindre une plateforme de test. Curieux, il clique sur le lien présent dans le mail qui le redirige vers Livl Review ©. Il lui est alors présenté un formulaire d’inscription basique lui demandant d’indiquer son email et de choisir un nom d’utilisateur et un mot de passe. Une fois inscrit, il se rend sur son profil afin de completer sa description.

4. Tout excité par son invitation récente à une plateforme de test, Bilou se connecte sur la plateforme afin de consulter le catalogue de produits qui lui ai proposé. Après une courte minute de consultation platonique, un jolie stylo lui fait de l’oeuil ... C’est le coup de coeur ! Il craque et décide d’envoyer une demande de test pour ce produit.
5. Alors qu’il était occupé à rédiger le 4ème chapitre de son prochain ouvrage, le regard de Bilou croise brièvement son stylo à plume. Un éclair de génie le traversa. Sa demande de test pour ce stylo qui l’avait tant émoustillé avait-elle acceptée ?

    Ni une ni deux, Bilou bondit sur sa bécane afin de se connecter à la plateforme de test. Il se rend sur la page de ses demandes envoyés et aperçois à son grand désarroi que sa demande est toujours en attente… C’est le coup dur pour Bilou qui rebrousse chemin, bredouille …

6. Au cours d’une journée de dur labeur, José l’agent de test se connecte sur la plateforme et s’aperçoit qu’il a une demande en attente depuis 2 jours ! Il s’étonne de ne pas l’avoir vu plus tôt ! Peut être que la notification mail de demande reçue lui est passé sous le nez … Bon, tant pis champi !

    José ne perd pas une seconde de plus et se met à épier la demande de test qu’il a reçu. Elle a été envoyé par un certain Bilou et concerne un de ses plus beaux modèle de stylo publié quelques jours auparavant. Il scrute le profil de ce fameux Bilou avec intêret et tombe sous le charme de son profil. Il accepte volontiers sa demande, esquissant un léger sourire en songeant à la joie que Bilou va éprouver lorsqu’il verra sa demande acceptée.

7. Alors qu’il se promenait les longs des sentiers bas-rhinois par un chaleureux après midi de printemps, le vibreur du smartphone de Bilou retenti. Interloqué, il brandit son smartphone et déchiffre avec difficulté les caractères que l’écran OLED de son smartphone peine à afficher sous ce soleil frappant.

    “Votre demande de test a été acceptée” aperçoit-il. Bilou a du mal a en croire le serveur POP3 hébergeant sa boite de reception qu’il soupçonne de calomnie …

    “Et si c’était une farce !?”, se dit-il.

    Bilou ne pouvais pas rester plus longtemps sans réponse à cette question. Il plie bagage et rentra chez lui en quatrième vitesse afin de se connecter à la plateforme de test. Il se rend sur son compte et s’exclame d’un cri de joie. Le stylo de ses rêves était bel et bien en route vers son domicile ! Dans un élan de bonté, il brandit son clavier pour envoyer un petit message de remerciement au dénomé "José" ayant accepté sa demande.


8. Mardi 20 juin, 16h. Pour le commun des mortels, c’est un mardi après midi bien banal. Ce n’est pas le cas pour Bilou. En effet, il a reçu hier un message du livreur lui indiquant la livraison du stylo pour lequel il a été sélectionné comme testeur. Bilou ne tient plus en place… Les minutes sont des heures et les secondes sont des minutes… Tout à coup, la sonnette retenti. Illico presto, Bilou accueille le facteur d’un pas décidé et déballe son stylo.

    Une semaine plus tard, fièrement équipé de son nouveau stylo qui est désormais devenu son plus fidèle compagnon, Bilou achève le dernier caractère de son nouveau livre. Quelle réussite ! Il s’empresse de se connecter sur la plateforme de test pour chanter les louanges de cet outil dont il est désormais inséparable. Quelques lignes plus tard, son commentaire est soumis et est en attente de validation.

9. Alors qu’il était en train de discuter avec son collègue, un email attire l’attention de José. Il l’ouvre et clique sur le lien qui le redirige vers Livl Reviews ©. C’est le commentaire de Bilou pour son dernier modèle de stylo qui est arrivé ! Il démarre la lecture du commentaire et est rapidement séduit par la plume du passioné de littérature. Lorsqu’il eu finit la lecture, il eu du mal a émerger et resta bouche bée quelques secondes. Il s’empressa de valider le test de Bilou et se dit qu’à l’avenir, il aimerai bien collaborer avec lui de temps à autres …

## **🔢 Estimation de la taille des données**

- milliers de produits
- centaines d’agents
- milliers de testeurs
- milliers de tests
