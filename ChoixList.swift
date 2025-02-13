//
//  ChoixList.swift
//  EcoEvent
//
//  Created by Apprenant127 on 12/12/2024.
//

import SwiftUI

struct ChoixList: View {
    
    @State private var selectedOption = 2 // Default selected option
    @State private var cartItems: Int = 0
    var location: Lieu
  
        func addToCart() {
               cartItems += 1
           }
        
        func callNumber() {
                UIApplication.shared.open(URL(string: "0489604859")! as URL)
            }
    
    
    var body: some View {
        //HSTACK du PICKER
                
        NavigationStack {
            VStack(spacing: 15) {
                //NAV VERS EXPERIENCE LIST
                
                ScrollView{
                   VStack {
                        // Carrousel
                        TabView {
                            ForEach(location.image, id: \.self) { image in
                                Image(image)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: UIScreen.main.bounds.width, height: 250)
                                    .clipped()
                            }
                        }
                        .tabViewStyle(.page)
                        .indexViewStyle(.page(backgroundDisplayMode: .always))
                        .frame(width: 370, height: 200) // Hauteur du carrousel
                    }
                    
                    VStack {
                        Text(location.name)
                            .font(.system(size:16))
                            .bold()
                        
                        Text(location.address)
                            .font(.system(size:14))
                    }
                    .frame(width: 370, height: 50)
                    .background(Color("beige"))
                    
                    //Accessibilité
                    HStack {
                        
                        Text("Accessibilité")
                            .font(.system(size:14))
                            .bold()
                            .foregroundStyle(Color("Colordetails"))
                            .frame(width: 100)
                        Image(systemName: "m.circle.fill")
                            .foregroundColor(.blue)
                        Text(location.metro)
                            .font(.system(size:14))
                        Image(systemName: "bicycle")
                            .foregroundColor(.accent)
                        Image(systemName: "figure.walk")
                            .foregroundColor(.accent)
                        
                        
                    }
                    
                    //Infos GoogleMaps, RS, Site Internet
                    ZStack{
                        
                        HStack{
                            Rectangle()
                                .frame(width: 370, height: 80)
                                .font(.largeTitle)
                                .foregroundColor(Color("beige"))
                                .padding()
                        }
                        HStack (spacing: 25){
                            VStack{
                                Image(systemName: "map.fill")
                                    .font(.title)
                                Text("Carte")
                                    .font(.system(size:14))
                            }
                            VStack{
                                Image(systemName: "globe")
                                    .font(.title)
                                Text("Site Web")
                                    .font(.system(size:14))
                            }
                            VStack{
                                Image(systemName: "camera.fill")
                                    .font(.title)
                                Text("Instagram")
                                    .font(.system(size:14))
                            }
                            VStack{
                                Image(systemName: "star.fill")
                                    .font(.title)
                                Text("Avis")
                                    .font(.system(size:14))
                            }
                        }
                    }
                    
                    //Description du restaurant
                    HStack (spacing: 50){
                        
                        VStack{
                            Image(systemName: "person.2.fill")
                                .frame(width: 20, height: 20, alignment: .center)
                                .font(.title)
                                .foregroundColor(.accent)
                            Text("Capacité max")
                                .font(.system(size:14))
                            Text(location.capacite)
                                .font(.system(size:14))
                        }
                        VStack{
                            Image(systemName: "tag.fill")
                                .frame(width: 20, height: 20, alignment: .center)
                                .font(.title)
                                .foregroundColor(.accent)
                            Text("Gamme de prix")
                                .font(.system(size:14))
                            Text(location.prixmoyen)
                                .font(.system(size:14))
                                .foregroundStyle(Color("Colordetails"))
                            Text("€€")
                                .font(.system(size:14))
                        }
                        
                    }
                    .padding()
                    HStack (spacing: 50){
                        
                        VStack{
                            Image(systemName: "house.fill")
                                .frame(width: 20, height: 20, alignment: .center)
                                .font(.title)
                                .foregroundColor(.accent)
                            Text("Salle, terrasse")
                                .font(.system(size:14))
                            Text("cave")
                                .font(.system(size:14))
                        }
                        VStack(alignment:.center){
                            Image(systemName: "clock.fill")
                                .frame(width: 20, height: 20, alignment: .center)
                                .font(.title)
                                .foregroundColor(.accent)
                            Text(location.jour)
                                .font(.system(size:14))
                            Text(location.heure)
                                .font(.system(size:14))
                            
                        }
                        
                    }
                    
                    //MENU
                    VStack {
                        Divider()
                        Text("MENU À PARTAGER")
                            .fontWeight(.bold)
                        
                        Divider()
                        Text("BOISSONS")
                            .fontWeight(.bold)
                        
                        Divider()
                        Text("SERVICES PROPOSÉS")
                            .fontWeight(.bold)
                        VStack {
                            HStack {
                                Image(systemName: "birthday.cake.fill")
                                    .foregroundColor(.accent) // Change uniquement la couleur de l'icône
                                Text("Gâteau d'anniversaire")
                                    .font(.system(size:14))
                            }
                            
                            HStack {
                                Image(systemName: "mic.circle.fill")
                                    .foregroundColor(.accent) // Change uniquement la couleur de l'icône
                                Text("Atelier DIY")
                                    .font(.system(size:14))
                            }
                            HStack {
                                Image(systemName: "scissors.circle.fill")
                                    .foregroundColor(.accent) // Change uniquement la couleur de l'icône
                                Text("Karaoké")
                                    .font(.system(size:14))
                            }
                        }
                        //BOUTONS CONTACT & AJOUTER AU PANIER
                        
                        HStack (spacing: 20){
                           
                            Button {
                                callNumber()
                            } label: {
                                Text("Contacter")
                                    .frame(width: 150, height: 50)
                                    .background(Color.gray)
                                    .foregroundColor(.white)
                                    .foregroundStyle(.colordetails)
                                    .cornerRadius(15)
                                    .fontWeight(.bold)
                            }
                            
                            NavigationLink(destination: PanierContenu()) {
                                Text("Ajouter au panier")
                                    .frame(width: 150, height: 50)
                                    .background(Color.accent)
                                    .foregroundColor(.white)
                                    .foregroundStyle(.colordetails)
                                    .cornerRadius(15)
                                    .fontWeight(.bold)
                            }
                            
                            
//                            Button {
//                                addToCart()
//                                
//                            } label: {
//                                Text("Ajouter au panier")
//                                    .frame(width: 150, height: 50)
//                                    .background(Color.accent)
//                                    .foregroundColor(.white)
//                                    .foregroundStyle(.colordetails)
//                                    .cornerRadius(15)
//                                    .fontWeight(.bold)
//                            }
                        }
                        
                        
                        
                    }
                }
                
                Spacer()
            }
            
        }
    }
    
}



#Preview {
    ChoixList(location: bar1)

}
