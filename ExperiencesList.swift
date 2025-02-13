//
//  ExperiencesList.swift
//  EcoEvent
//
//  Created by Emilie on 11/12/2024.
//

import SwiftUI

struct ExperiencesList: View {
    
    @State private var selectedOption = "Restaurant" // Default selected option
    @State private var venueDate = Date.now
    @State private var numberOfParticipants = 8
    let arrondissements = ["75001", "75002", "75003", "75004", "75005", "75006", "75007", "75008", "75009", "75010", "75011", "75012", "75013", "75014", "75015", "75016", "75017", "75018", "75019", "75020"]
    @State private var selectedArrondissement: String = "75001"
    
    var body: some View {
        NavigationStack {
            VStack {
                // HSTACK du PICKER
                HStack {
                    Picker(selection: $selectedOption, label: Text("RESTAURANTS")) {
                        Text("BARS").tag("Bar")
                        Text("RESTAURANTS").tag("Restaurant")
                        Text("ACTIVITÉS").tag("Activité")
                        
                    }
                    
                    
                    .pickerStyle(.segmented)
                    .background(Color("lightGreen"))
                    .cornerRadius(5)
                    .frame(width: 370, height: 80)
                    
                }
                
                //HSTACK Date, localisation, Nombre de participants
                
                HStack (spacing: 15)  {
                    
                    HStack {
                        
                        DatePicker(selection: $venueDate, in: ...Date.now, displayedComponents: .date) {
                            
                            Label("", systemImage: "calendar")
                                .labelStyle(IconOnlyLabelStyle())
                                .padding([.trailing, .leading], 10)
                        }
                        .frame(width: 90)
                        
                    }
                    
                    
                    HStack{
                        Label("", systemImage: "location.circle.fill")
                            .labelStyle(IconOnlyLabelStyle())
                            .padding(.trailing, -4)
                        Menu {
                            ForEach(arrondissements, id: \.self)
                            { arrondissement in
                                
                                Button(action: {
                                    selectedArrondissement = arrondissement
                                }) {
                                    Text(arrondissement)
                                }
                            }
                            
                        }  label: {
                            
                            Text("\(selectedArrondissement)")
                                .foregroundColor(.black)
                            
                            
                        }
                    }
                    .frame(width: 90)
                    Image(systemName: "person.fill")
                        .font(.title)
                    
                    
                    HStack {
                        // Bouton moins
                        Button(action: {
                            // Réduire le nombre de participants (mais ne pas aller en dessous de 1)
                            if numberOfParticipants > 1 {
                                numberOfParticipants -= 1
                            }
                        }) {
                            Text("-")
                                .font(.system(size:30))
                                .frame(width: 30, height: 30)
                                .background(Color.black)
                                .foregroundColor(.white)
                                .cornerRadius(25)
                            
                            
                        }
                        
                        // Affichage du nombre de participants
                        Text("\(numberOfParticipants)")
                            .font(.system(size:20))
                            .frame(width: 30, height: 30)
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(30)
                        
                        // Bouton plus
                        Button(action: {
                            // Augmenter le nombre de participants
                            numberOfParticipants += 1
                        }) {
                            Text("+")
                                .font(.system(size:30))
                                .frame(width: 30, height: 30)
                                .background(Color.black)
                                .foregroundColor(.white)
                                .cornerRadius(25)
                            
                            
                            
                        }
                    }
                }
            }
            
            ZStack{
                
                HStack{
                    Rectangle()
                        .frame(width: 370, height: 80)
                        .font(.largeTitle)
                        .foregroundColor(Color("beige"))
                    
                    
                }
                
                HStack (spacing: 20) {
                    
                    FilterButton(image: "slider.horizontal.3", text: "Filtre")
                    FilterButton(image: "leaf.circle.fill", text: "Eco-offre")
                    FilterButton(image: "eurosign.circle.fill", text: "Prix")
                    FilterButton(image: "star.circle.fill", text: "Notes")
                    FilterButton(image: "figure.walk.circle.fill", text: "Distance")
                    
                }
            }
            
            
            // Ici la liste de tous les restaurants proposés
            
            Text("Lieux disponibles")
                .fontWeight(.bold)
            
            //Faire un FOREACH et dedans on met un .filter pour filtrer les données en fonction des catégories
            
            
            List{
                ForEach(lieux) { lieu in
                    if lieu.experience == selectedOption {
                        NavigationLink {
                            ChoixList(location: lieu)
                        } label: {
                            VStack{
                                Image(lieu.image.first!)
                                    .resizable()
                                    .scaledToFit()
                                Text(lieu.name)
                                    .font(.title3)
                                    .fontWeight(.black)
                                Text(lieu.address)
                                HStack{
                                    Image(systemName: "m.circle.fill")
                                        .foregroundColor(.blue)
                                    Text(lieu.metro)
                                }
                                HStack{
                                    Image(systemName: "eurosign.circle.fill")
                                        .foregroundColor(Color("Colordetails"))
                                    Text(lieu.prixmoyen)
                                }
                                HStack{
                                    Image(systemName: "leaf.circle.fill")
                                        .foregroundColor(Color("lightGreen"))
                                    Text(lieu.offre)
                                }
                                
                            }
                            .listRowSeparator(.hidden)
                            .padding()
                        }
                        
                    }
                }
            }
            .listStyle(PlainListStyle())
            
            
            
        }
        
    }
    
    
}


#Preview {
    ExperiencesList()
}


struct FilterButton: View {
    var image: String
    var text: String
    var body: some View {
        VStack{
            Image(systemName: image)
                .font(.title)
            Text(text)
        }
    }
}
