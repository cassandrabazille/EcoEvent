//
//  DemandeDeReservationInfo.swift
//  EcoEvent
//
//  Created by Emilie on 12/12/2024.
//

import SwiftUI

struct DemandeDeReservationInfo: View {
    var body: some View {
        NavigationStack {
            ZStack{
                Rectangle()
                    .frame(width: 400, height: 400)
                    .font(.largeTitle)
                    .foregroundColor(Color("beige")).ignoresSafeArea()
                VStack{
                    Image(systemName: "party.popper.fill")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.accentColor)
                        .scaledToFit()
                    Text("Merci pour votre commande ! Vous serez informé quand l’établissement aura confirmé la réservation.")
                        .padding()
                        .font(.title3)
                        .multilineTextAlignment(.center)
                }
                
            }
            .padding(50)
            //ici le bouton OK
            
            
            NavigationLink(destination: MonCompteinfo()) {
                Text("OK")
                    .frame(width: 200, height: 50)
                    .background(Color.accent)
                    .foregroundStyle(.white)
                    .foregroundStyle(.colordetails)
                    .cornerRadius(15)
                    .fontWeight(.bold)
                    .font(.title2)
                
                
            }
            
            
        }
    }
}
    


#Preview {
    DemandeDeReservationInfo()
}
