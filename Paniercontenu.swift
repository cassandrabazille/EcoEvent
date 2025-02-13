//
//  Paniercontenu.swift
//  EcoEvent
//
//  Created by Apprenant127 on 11/12/2024.
//

import SwiftUI

struct PanierContenu: View {
    @State private var numberOfParticipants = 3
    var experiencetype = ["BAR", "RESTAURANT", "ACTIVITÉ"]
    var name = ["Le bar vivant", "Green Naan", "Fleurs d'orsay"]
    var nbparticipants = ["5","7","4"]
    var localisation = ["Paris 75015","Paris 75011","Paris 75007"]
    var date = ["02/05/2025", "02/05/2025", "02/05/2025"]
    
    var body: some View {
        NavigationStack {
            //            Image(systemName: "arrow.left.circle.fill")
            //                .resizable()
            //                .foregroundStyle(Color("AccentColor"))
            //                .frame(width: 20, height: 20)
            //                .padding(.trailing, 350)
            //                .padding(.bottom, 15)
            
            VStack {
                Text("MON PANIER")
                    .frame(width: 365, height: 25)
                    .font(.system(size:15))
                    .bold()
                    .background(Color("AccentColor"))
                    .foregroundStyle(Color("Color"))
                    .padding(.bottom, 15)
                
                
                HStack(alignment: .bottom) {
                    
                    VStack(alignment: .leading) {
                        Text(experiencetype[0])
                            .font(.system(size:14))
                            .bold()
                            .padding(.trailing, 20)
                        
                        Image("barvivant")
                            .resizable()
                            .frame(width: 110, height: 100)
                        
                        
                    }
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text(name[0])
                            .font(.system(size:14))
                            .bold()
                        Text(localisation[0])
                            .font(.system(size:14))
                            .padding(.bottom, 35)
                        
                        HStack(alignment: .bottom) {
                            Image(systemName: "calendar")
                            Text(date[0])
                                .font(.system(size:14))
                        }
                        
                    }
                    .frame(width: 120, height: 100)
                    
                    VStack(alignment: .trailing) {
                        HStack {
                            // Bouton moins
                            Button(action: {
                                // Réduire le nombre de participants (mais ne pas aller en dessous de 1)
                                if numberOfParticipants > 1 {
                                    numberOfParticipants -= 1
                                }
                            }) {
                                Text("-")
                                    .font(.system(size:20))
                                    .frame(width: 20, height: 20)
                                    .background(Color.black)
                                    .foregroundColor(.white)
                                    .cornerRadius(25)
                                
                                
                            }
                            // Affichage du nombre de participants
                            Text("\(numberOfParticipants)")
                                .font(.system(size:20))
                                .frame(width: 20, height: 20)
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(20)
                            
                            // Bouton plus
                            Button(action: {
                                // Augmenter le nombre de participants
                                numberOfParticipants += 1
                            }) {
                                Text("+")
                                    .font(.system(size:20))
                                    .frame(width: 20, height: 20)
                                    .background(Color.black)
                                    .foregroundColor(.white)
                                    .cornerRadius(25)
                                
                            }
                        }
                        .padding(.bottom, 60)
                        
                        Image(systemName: "trash")
                        
                    }
                    .frame(width: 100, height: 100)
                }
                .frame(width: 365, height: 150)
                .background(Color("Colorbase"))
                
                .padding(.bottom, 15)
                
                HStack(alignment: .bottom) {
                    
                    VStack(alignment: .leading) {
                        Text(experiencetype[1])
                            .font(.system(size:14))
                            .bold()
                            .padding(.trailing, 20)
                        
                        Image("GreenNaan")
                            .resizable()
                            .frame(width: 110, height: 100)
                        
                    }
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text(name[1])
                            .font(.system(size:14))
                            .bold()
                        Text(localisation[1])
                            .font(.system(size:14))
                            .padding(.bottom, 35)
                        
                        HStack(alignment: .bottom) {
                            Image(systemName: "calendar")
                            Text(date[1])
                                .font(.system(size:14))
                        }
                        
                    }
                    .frame(width: 120, height: 100)
                    
                    VStack(alignment: .trailing) {
                        HStack {
                            // Bouton moins
                            Button(action: {
                                // Réduire le nombre de participants (mais ne pas aller en dessous de 1)
                                if numberOfParticipants > 1 {
                                    numberOfParticipants -= 1
                                }
                            }) {
                                Text("-")
                                    .font(.system(size:20))
                                    .frame(width: 20, height: 20)
                                    .background(Color.black)
                                    .foregroundColor(.white)
                                    .cornerRadius(25)
                                
                                
                            }
                            // Affichage du nombre de participants
                            Text("\(numberOfParticipants)")
                                .font(.system(size:20))
                                .frame(width: 20, height: 20)
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(20)
                            
                            // Bouton plus
                            Button(action: {
                                // Augmenter le nombre de participants
                                numberOfParticipants += 1
                            }) {
                                Text("+")
                                    .font(.system(size:20))
                                    .frame(width: 20, height: 20)
                                    .background(Color.black)
                                    .foregroundColor(.white)
                                    .cornerRadius(25)
                                
                            }
                        }
                        .padding(.bottom, 60)
                        
                        Image(systemName: "trash")
                        
                    }
                    .frame(width: 100, height: 100)
                }
                .frame(width: 365, height: 150)
                .background(Color("Colorbase"))
                
                .padding(.bottom, 15)
                
                HStack(alignment: .bottom) {
                    
                    VStack(alignment: .leading) {
                        Text(experiencetype[2])
                            .font(.system(size:14))
                            .bold()
                            .padding(.trailing, 20)
                        
                        Image("Fleurorsay")
                            .resizable()
                            .frame(width: 110, height: 100)
                        
                    }
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text(name[2])
                            .font(.system(size:14))
                            .bold()
                        Text(localisation[2])
                            .font(.system(size:14))
                            .padding(.bottom, 35)
                        
                        HStack(alignment: .bottom) {
                            Image(systemName: "calendar")
                            Text(date[2])
                                .font(.system(size:14))
                        }
                        
                    }
                    .frame(width: 120, height: 100)
                    
                    VStack(alignment: .trailing) {
                        HStack {
                            // Bouton moins
                            Button(action: {
                                // Réduire le nombre de participants (mais ne pas aller en dessous de 1)
                                if numberOfParticipants > 1 {
                                    numberOfParticipants -= 1
                                }
                            }) {
                                Text("-")
                                    .font(.system(size:20))
                                    .frame(width: 20, height: 20)
                                    .background(Color.black)
                                    .foregroundColor(.white)
                                    .cornerRadius(25)
                                
                                
                            }
                            // Affichage du nombre de participants
                            Text("\(numberOfParticipants)")
                                .font(.system(size:20))
                                .frame(width: 20, height: 20)
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(20)
                            
                            // Bouton plus
                            Button(action: {
                                // Augmenter le nombre de participants
                                numberOfParticipants += 1
                            }) {
                                Text("+")
                                    .font(.system(size:20))
                                    .frame(width: 20, height: 20)
                                    .background(Color.black)
                                    .foregroundColor(.white)
                                    .cornerRadius(25)
                                
                            }
                        }
                        .padding(.bottom, 60)
                        
                        Image(systemName: "trash")
                        
                    }
                    .frame(width: 100, height: 100)
                }
                .frame(width: 365, height: 150)
                .background(Color("Colorbase"))
                
                .padding(.bottom, 15)
                
                
                HStack {
                    
                    
                    Text("Un cadeau éco-responsable vous sera offert lors de l’événement")
                        .multilineTextAlignment(.center)
                        .font(.system(size:14))
                        .bold()
                    
                    
                    Image("chapeaulogo")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 30, height: 60)
                }
                
                .padding([.leading, .trailing], 45)
                
                //        Button(action: {
                //
                //        }) {
                // navigation link destination Payment et label text valider le panier
                
                NavigationLink(destination: PaymentView()) {
                    
                    Text("Valider le panier")
                    
                        .frame(width: 150, height: 35)
                        .font(.system(size:15))
                        .bold()
                        .foregroundStyle(Color("Color"))
                        .background(Color("AccentColor"))
                        .cornerRadius(10)
                    
                }
        
            
            .padding(.bottom, 15)
            
            Text("Veuillez saisir votre emprunte bancaire à l’étape suivante pour finaliser la commande.")
                .font(.system(size:13))
                .multilineTextAlignment(.center)
                .padding([.leading, .trailing], 50)
            }
        }
    }
}

#Preview {
    PanierContenu()
}

