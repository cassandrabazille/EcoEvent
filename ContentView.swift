//
//  ContentView.swift
//  EcoEvent
//
//  Created by Emilie on 09/12/2024.
//

import SwiftUI

struct Lieu: Identifiable {
    var id = UUID()
    var image : [String]
    var experience: String
    var name: String
    var address: String
    var metro: String
    var offre: String
    var prixmoyen: String
    var note: Double
    var favoris: Bool
    var capacite: String
    var heure: String
    var jour: String
}

var restaurant1: Lieu =
Lieu(image: ["carrousselgreentable", "barexterieur", "carousselgreentable2"], experience: "Restaurant", name: "Restaurant Green table", address: "22 Rue Pelée, 75011 Paris", metro: "Richard Lenoir", offre: "Fruits et légumes de saison", prixmoyen: "plat moyen : 20-30€", note: 4.7, favoris: false, capacite: "20", heure: "19h00-01h00", jour: "du lun au dim")

var restaurant2: Lieu =
Lieu(image: ["carrousselgreentable", "barexterieur", "carousselgreentable2"], experience: "Restaurant", name: "La Cantine d'Ambroise", address: "15 rue Pasteur, Paris 11", metro: "Saint Ambroise", offre: "Fruits et légumes de saison & viande locale", prixmoyen: "plat moyen : 20-30€", note: 4.2, favoris: false, capacite: "30", heure: "18h00-23h00", jour: "du mardi au dimanche")

var restaurant3: Lieu =
Lieu(image: ["carrousselgreentable", "barexterieur", "carousselgreentable2"], experience: "Restaurant", name: "Cafétaria organique", address: "28 Rue Sedaine, 75011 Paris", metro: "Voltaire", offre: "Offre 100% végétarienne", prixmoyen: "plat moyen : 10-15€", note: 4.8, favoris: true, capacite: "50", heure: "17h00-23h00", jour: "du lundi au samedi")

var restaurant4: Lieu =
Lieu(image: ["carrousselgreentable", "barexterieur", "carousselgreentable2"], experience: "Restaurant", name: "Green asian fusion", address: "6 rue Pétion, Paris 11", metro:  "Saint-Maur", offre: "Offre 100% végétarienne", prixmoyen: "plat moyen : 30-40€", note: 4.9, favoris: true, capacite: "30", heure: "18h00-23h30", jour: "du lundi au dimanche")


var bar1: Lieu =
Lieu(image: ["carrousselgreentable", "barexterieur", "carousselgreentable2"], experience: "Bar", name: "Bar vivant", address: "8 rue Saint-Rustique, 75018 Paris",  metro: "Abbesses", offre: "Tapas et vins bio", prixmoyen: "verre moyen : 5-10€", note: 4.6, favoris: false, capacite: "30", heure: "16h00-01h00", jour: "du jeudi au dimanche")

var bar2: Lieu =
Lieu(image: ["carrousselgreentable", "barexterieur", "carousselgreentable2"], experience: "Bar", name: "Bar exterieur", address: "2 Pl. du Cardinal Lavigerie, 75012 Paris", metro: "Porte de Charenton", offre: "Offre 100% vins bio", prixmoyen: "verre moyen : 10-20€", note: 4.5, favoris: false, capacite: "60", heure: "15h00-01h00", jour: "du lundi au dimanche")

var bar3: Lieu =
Lieu(image: ["carrousselgreentable", "barexterieur", "carousselgreentable2"], experience: "Bar", name: "Bar chaleureux", address: "10 Boulevard de Charonne, 75011 Paris", metro: "Avron", offre: "Bières locales", prixmoyen: "verre moyen : 10-15€", note: 4.9, favoris: true, capacite: "50", heure: "18h00-01h00", jour: "du lundi au dimanche")

var bar4: Lieu =
Lieu(image: ["carrousselgreentable", "barexterieur", "carousselgreentable2"], experience: "Bar", name: "Bar green peniche", address: "50 quai de la Seine, 75019 Paris", metro: "Riquet", offre: "Fancy cocktails avec fruits de saison", prixmoyen: "verre moyen : 20-30€", note: 4.7, favoris: true, capacite: "30", heure: "17h00-01h00", jour: "du lundi au samedi")

var activite1: Lieu =
Lieu(image: ["carrousselgreentable", "barexterieur", "carousselgreentable2"], experience: "Activité", name: "Planet yoga", address: "30 Bd Flandrin, 75016 Paris", metro: "Porte Dauphine ", offre: "Séance de Yoga dans les parcs parisiens", prixmoyen: "Séance : 10€", note: 4.5, favoris: false, capacite: "10", heure: "16h00-01h00", jour: "du mardi au samedi")

var activite2: Lieu =
Lieu(image: ["carrousselgreentable", "barexterieur", "carousselgreentable2"], experience: "Activité", name: "Green perfume", address: "10 rue Cherche-Midi, 75006 Paris", metro: "Saint-Sulpice", offre: "Fabrication de parfum à la composition 100% naturelle", prixmoyen: "Stage de 4h : 80€", note: 4.8, favoris: true, capacite: "20", heure: "10h00-15h00", jour: "du jeudi au dimanche")

var activite3: Lieu =
Lieu(image: ["carrousselgreentable", "barexterieur", "carousselgreentable2"], experience: "Activité", name: "Botanica", address: "8 Avenue Gambetta, 75020 Paris", metro: "Père Lachaise", offre: "Compositions florales 100% naturelles", prixmoyen: "Stage de 2H30 : 50€", note: 4.7, favoris: true, capacite: "10", heure: "11h00-16h00", jour: "du vendredi au dimanche")

var activite4: Lieu =
Lieu(image: ["carrousselgreentable", "barexterieur", "carousselgreentable2"], experience: "Activité", name: "GreenCook", address: "14 Bd Malesherbes, 75008 Paris", metro: "Saint-Augustin", offre: "Cours de cuisine 100% végétarienne", prixmoyen: "Stage de 3h : 60€", note: 4.9, favoris: false, capacite: "15", heure: "10h00-17h00", jour: "du mardi au dimanche")

var lieux : [Lieu] = [
    bar1, bar2, bar3, bar4, restaurant1, restaurant2, restaurant3, restaurant4, activite1, activite2, activite3, activite4
]
var user1: User =
User(nom: "Dupont", prenom: "Jean", telephone: "0612131415", dateNaissance: "12/05/1990", mail:"jean.dupont@gmail.com", listeFavoris: [bar4, activite1])


struct User {
    var nom: String
    var prenom: String
    var telephone: String
    var dateNaissance: String
    var mail: String
    var listeFavoris: [Lieu]
}

struct Commande {
    var lieu: [Lieu]
    var date: String
    var localisation: String
    var nombreParticipants: Int
}


struct ContentView: View {
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
