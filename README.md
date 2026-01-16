# FANGA - Application Mobile Flutter

Application de localisation et swap de batteries pour motos électriques

---

## Setup

### Installation
1. Cloner le projet depuis GitHub
2. Installer les dépendances avec `flutter pub get`
3. Générer les fichiers nécessaires avec `flutter pub run build_runner build --delete-conflicting-outputs`
4. Lancer l'app avec `flutter run`

### Configuration
- Ajouter une clé API Google Maps dans les fichiers de configuration Android et iOS si nécessaire
- L'application utilise des données mockées donc pas besoin de backend

---

## Architecture

J'ai structuré le projet en suivant la **Clean Architecture** qui sépare le code en plusieurs couches indépendantes :

### Les 4 couches principales

**1. Domain (Domaine métier)**
C'est le cœur de l'application. On y trouve :
- Les entités comme `Station` qui représente une station de swap
- Les interfaces des repositories qui définissent comment récupérer les données
- Les cas d'usage comme "récupérer la liste des stations" ou "effectuer un swap"

Cette couche ne dépend de rien, elle contient juste la logique métier pure.

**2. Infrastructure (Données)**
Cette couche implémente ce qui est défini dans Domain :
- Les sources de données (ici un fichier JSON local qui simule une API)
- L'implémentation concrète des repositories
- La transformation des données JSON en objets métier

**3. Application (Logique applicative)**
C'est ici qu'on gère l'état de l'application avec BLoC :
- Un BLoC pour la carte qui gère l'affichage des stations
- Un BLoC pour le détail d'une station qui gère le swap de batterie
- Chaque BLoC écoute des événements et émet des états

**4. Presentation (Interface utilisateur)**
Tout ce qui concerne l'affichage :
- Les pages (carte, détail station)
- Les widgets réutilisables
- L'interaction avec l'utilisateur

### Pourquoi cette structure ?

Ça permet de :
- Tester facilement chaque partie séparément
- Changer une source de données sans toucher au reste
- Garder le code organisé et facile à maintenir
- Faire évoluer l'app sans tout casser

---

## Choix techniques

### BLoC pour la gestion d'état
J'ai choisi BLoC parce que c'est le pattern recommandé par l'équipe Flutter. Il sépare bien la logique de l'interface, ce qui rend le code plus testable. En plus, avec Freezed, on a des états immutables qui évitent les bugs.

### GetIt pour l'injection de dépendances
GetIt permet de ne pas créer des objets partout dans le code. On les enregistre une fois au démarrage et on les récupère quand on en a besoin. C'est simple et efficace.

### Dartz pour la gestion des erreurs
Au lieu de lancer des exceptions, j'utilise le type `Either` qui force à gérer les cas d'erreur. Ça rend le code plus sûr.

### Freezed pour l'immutabilité
Génère automatiquement tout le code répétitif pour les classes (égalité, copie, etc.). Ça évite les bugs et fait gagner du temps.


---

## Améliorations possibles

### À court terme

**Tests**
Pour l'instant il n'y a pas de tests. Il faudrait ajouter :
- Des tests unitaires sur la logique métier
- Des tests sur les BLoC pour vérifier que les états sont corrects
- Des tests d'interface pour vérifier que tout s'affiche bien

**Animations**
Ajouter quelques animations rendrait l'app plus agréable :
- Une transition fluide entre la carte et le détail
- Un loader avec skeleton pendant le chargement
- Des effets au tap sur les boutons

**Accessibilité**
Rendre l'app utilisable par tout le monde :
- Ajouter des descriptions pour les lecteurs d'écran
- Vérifier les contrastes de couleurs
- S'assurer que les boutons sont assez grands

### À moyen terme

**Mode hors ligne**
Mettre en cache les stations pour qu'elles s'affichent même sans réseau. Les actions comme le swap seraient mises en attente et exécutées quand le réseau revient.

**Design amélioré**
Travailler avec un designer pour :
- Créer une charte graphique cohérente
- Améliorer l'expérience utilisateur
- Rendre l'interface plus moderne

**Notifications**
Prévenir l'utilisateur quand :
- Une station proche a des batteries disponibles
- Son swap est terminé
- Il y a une promo

### À long terme

**Nouvelles fonctionnalités**
- Navigation GPS vers la station
- Réservation d'une batterie à l'avance
- Historique des swaps effectués
- Programme de fidélité avec points

**Support multi-plateformes**
Adapter l'app pour :
- Le web (version PWA)
- Desktop si besoin

---

## Comment gérer des milliers de stations, du temps réel et les zones à faible connectivité ?

### 1. Gérer des milliers de stations

**Le problème**
Si on a 10 000 stations et qu'on les affiche toutes sur la carte, ça va ramer et consommer beaucoup de mémoire.

**Ma solution**
- **Regroupement intelligent** : Au lieu d'afficher 10 000 points, on les regroupe en clusters. Par exemple, si 50 stations sont proches, on affiche juste un cercle avec "50". Quand on zoom, ça se dégroupe progressivement.

- **Chargement par zone** : On ne charge que les stations visibles à l'écran. Quand l'utilisateur déplace la carte, on charge les nouvelles stations de cette zone. Comme ça on ne gaspille pas de ressources.

- **Chargement à la demande** : Les détails complets d'une station ne sont chargés que quand on clique dessus. Sur la carte on affiche juste le minimum (nom et statut).

### 2. Gérer le temps réel

**Le problème**
Les batteries disponibles changent constamment. Comment avoir des infos toujours à jour sans recharger sans arrêt ?

**Ma solution**
- **Connexion permanente** : Utiliser des WebSockets pour avoir une connexion ouverte avec le serveur. Dès qu'une batterie est prise ou ajoutée, le serveur nous envoie l'info directement.

- **Mises à jour ciblées** : On ne s'abonne qu'aux stations visibles à l'écran. Pas besoin de recevoir les mises à jour de toute la ville si on regarde qu'un quartier.

- **Mise à jour optimiste** : Quand un utilisateur fait un swap, on affiche directement le changement sans attendre la confirmation du serveur. Si ça échoue, on revient en arrière. Ça donne une impression de rapidité.

- **Solution de secours** : Si les WebSockets ne marchent pas (vieux réseau, firewall), on fait du polling classique toutes les 30 secondes.

### 3. Gérer les zones à faible connectivité

**Le problème**
En Afrique, beaucoup d'endroits ont une connexion instable ou très lente. L'app doit marcher quand même.

**Ma solution : Mode hors ligne complet**

**Stockage local**
- Quand on a du réseau, on télécharge et met en cache toutes les stations à proximité de l'utilisateur
- Ces données sont stockées localement sur le téléphone avec une date d'expiration
- L'app peut donc afficher la carte et les stations même sans aucune connexion

**Synchronisation intelligente**
- Toutes les actions (swaps, paiements) sont enregistrées dans une file d'attente locale
- Dès que le réseau revient, la file d'attente s'exécute automatiquement
- L'utilisateur est informé clairement : "Action en attente de synchronisation"

**Priorisation des données**
- Quand le réseau est faible, on charge d'abord les infos essentielles (statut des stations)
- Les images et détails secondaires sont chargés après
- On compresse les données pour économiser la bande passante

**Préchargement malin**
- Quand l'utilisateur est sur WiFi, on précharge automatiquement les données des zones qu'il visite souvent
- Comme ça il a déjà tout en cache avant de partir

**Indicateurs visuels clairs**
- Une bannière indique quand on est hors ligne
- Un code couleur montre si les données sont fraîches ou en cache
- Les actions impossibles hors ligne sont désactivées avec une explication


### En résumé

L'idée c'est de concevoir l'app comme si le réseau était toujours mauvais :
- Tout fonctionne en local d'abord
- La synchronisation se fait en arrière-plan quand c'est possible
- L'utilisateur a toujours un retour clair sur l'état de l'app
- On charge intelligemment pour économiser données et batterie

Comme ça, que tu sois à Abidjan avec la 4G ou dans un village avec du Edge qui coupe, l'expérience reste fluide.

### Important 
 J'ai essayé de compiler la base code mais je n'ai que des erreurs j'ai fait des recherches et finalement et j'en suis arrivé à la conclusion que il fallait recréér un nouveau projet parce que le graddle était trop cassé .C'est pour cela le contenu des fichiers n'a pas été implémenté.
---

**Honorine - Janvier 2026**