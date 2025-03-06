# Projet 1 : Création d’une application iOS avec le langage de programmation Swift

## Description du projet
J’ai réalisé ce projet de création d’application iOS en équipe dans le cadre de l’Apple Foundation Program, un programme d’un mois pour créer une application iOS en partant de l’UX design jusqu’à la réalisation de l’application en Swift. Le thème était “EcoEvent” et nous avons choisi de créer une application pour aider les utilisateurs à organiser leur anniversaire de façon éco-responsable à Paris.

## Fonctionnalités et Cahier des Charges

### Expériences
- **Ajouts :**
  - Un Picker pour filtrer les types d’expérience
  - DatePicker
  - SF Symbols
  - Boucle pour la localisation
  - Des boutons pour ajuster le nombre de participants
  - ScrollView pour afficher les données (images + texte) qui sont liées à une structure de données identifiables contenant des variables et à un tableau (cf. Fichier « modèle »)
  - Navigation Stack et Navigation Link pour naviguer vers l’écran suivant / le lieu choisi

### Choix
- Un Carrousel d’images avec TabView
- SF Symbols et Données alimentées par le tableau présent dans « modèle »
- ScrollView
- Bouton Ajouter au panier avec un Navigation Link pour retourner à l’écran Expériences

### Panier
- Un Navigation Stack pour retourner à l’écran « ChoixList »
- Une Boucle permet d’afficher les informations liées à l’expérience choisie
- Des boutons pour ajuster le nombre de participants
- Textes et logo d’application
- Bouton « Valider le panier » avec un Navigation Link pour naviguer vers l’écran « Paymentdetails » pour confirmer la réservation avec une empreinte bancaire

### Paiement
- ScrollView
- Des conditions « if » pour sélectionner le mode de paiement
- TextField pour ajouter les informations bancaires
- Toggle() pour sauvegarder les informations bancaires
- Bouton « Confirmer votre commande »
- Navigation Link pour retourner à l’écran « DemandeDeReservationInfo » (confirmation de la commande)

### Confirmation de réservation
- Bouton « OK »
- Texte
- Navigation Stack et Navigation Link pour revenir à l’écran « ExperienceList »

### Mon Compte
- ScrollView vertical & ScrollView horizontal
- TextField pour les informations personnelles
- 3 Boucle pour afficher les données des lieux réservés et passés
- Navigation Stack et Navigation Link

### TabBar
- TabView avec 3 tableItem pour revenir sur les écrans parents Expériences, Panier et Mon compte (cf. ContentView)

### BONUS
- **Expériences :** FilterButton inactifs
- **Choix :** Bouton Contact (inactif)
- **Panier :** Symbole « Poubelle » inactif

## Capture vidéo
Vous retrouverez ci-dessous la capture vidéo du projet ainsi que son cahier des charges.
