//
//  MonCompte.swift
//  EcoEvent
//
//  Created by Emilie on 11/12/2024.
//

import SwiftUI

struct MonCompteinfo: View {
    var moncompte = ["Mes coordonnées", "Mes éco-anniv à venir", "Mes éco-anniv passés","Mes favoris"]
    @State var nom: String = ""
    @State var prénom: String = ""
    @State var numero: String = ""
    var body: some View {
        NavigationStack {
            ZStack {
                
                
                ScrollView {
                    VStack(alignment: .leading) {
                        
                        VStack {
                            Text("Mon compte")
                                .frame(width: 100, height: 35)
                                .padding(.horizontal, 100)
                                .background(.accent)
                                .padding(.leading, 30)
                            Spacer()
                            HStack {
                                Image(systemName: "folder.fill.badge.person.crop")
                                    .padding()
                                    .font(.title)
                                    .foregroundStyle(.accent)
                                
                                Text("Mes coordonnées")
                                    .bold()
                            }
                            .frame(width:300, height: 50)
                            .background(Color("Colorbase"))
                            
                            
                            
                            HStack {
                                TextField("Nom :", text: $nom)
                                    .padding()
                                    .textFieldStyle(.roundedBorder)
                                TextField("Prénom :", text: $prénom)
                                    .padding()
                                    .textFieldStyle(.roundedBorder)
                                
                            }
                            TextField("Numéro de télephone :", text: $numero)
                                .padding()
                                .textFieldStyle(.roundedBorder)
                            TextField("Date de naissance :", text: $prénom)
                                .padding()
                                .textFieldStyle(.roundedBorder)
                            
                            
                            HStack {
                                Image(systemName: "calendar.badge.clock")
                                    .padding(.horizontal, 20)
                                    .font(.title)
                                    .foregroundStyle(.accent)
                                
                                
                                Text("Mes éco-anniv à venir ")
                                    .bold()

                                
                            }
                            .frame(width:300, height: 50)
                            .background(Color("Colorbase"))
                            
                            Spacer()
                            
                            
                            //                HStack{
                            //
                            //                    Image("barvivant")
                            //                        .resizable()
                            //                        .frame(width: 100, height: 100)
                            //                        .padding(.horizontal, 50)
                            //
                            //
                            //                }
                            
                        }
                        //         DEBUT
                        HStack {
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.white)
                                VStack {
                                    
                                    //
                                    NavigationLink(destination: ChoixList(location: bar1)) {
                                        
                                        
                                        ZStack {
                                          
                                            Image("Fleurorsay")
                                                .resizable()
                                                .cornerRadius(10)
                                                .frame(width: 160, height: 40)
                                            Text("Activité")
                                                .background(Color.white)
                                        }
                                            VStack {
                                               
                                                    
//                                                Spacer()
                                            }
//                                            .padding(.trailing, 100)
//                                            .padding(.top, 10)
                                            
                                        }
                                        Text("Fleur d'orsay")
                                            .bold()
                                        Divider()
                                            .padding(.horizontal)
                                        Text("Lieu : Paris 75007")
                                            .bold()
                                        Text("02/05/2025")
                                        
                                        
                                    }
                                }
                                .frame(width: 160, height: 130)
                                .shadow(radius: 10)
                                .padding(.horizontal)
                                //
                                ZStack {
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(Color.white)
                                    VStack {
                                        ZStack {
                                            Image("barvivant")
                                                .resizable()
                                            
                                                .cornerRadius(5)
                                            VStack {
                                                Text("Bar")
                                                    .background(Color.white)
                                                    .cornerRadius(5)
                                                Spacer()
                                            }
                                            .padding(.trailing, 100)
                                            .padding(.top, 10)
                                            
                                        }
                                        Text("Le bar vivant")
                                            .bold()
                                        Divider()
                                            .padding(.horizontal)
                                        Text("Lieu : Paris 75015")
                                            .bold()
                                        Text("02/06/2025")
                                        
                                    }
                                }
                                .frame(width: 160, height: 130)
                                .shadow(radius: 10)
                                .padding(.horizontal)
                            }
                            //
                            ZStack {
                                RoundedRectangle(cornerRadius: 5)
                                    .fill(Color.white)
                                VStack {
                                    ZStack {
                                        Image("GreenNaan")
                                            .resizable()
                                        
                                            .cornerRadius(5)
                                        VStack {
                                            Text("Restaurant")
                                                .background(Color.white)
                                            Spacer()
                                        }
                                        .padding(.trailing, 50)
                                        .padding(.top, 10)
                                        
                                    }
                                    Text("Green Naan")
                                        .bold()
                                    Divider()
                                        .padding(.horizontal)
                                    Text("Lieu : Paris 75011")
                                        .bold()
                                    Text("06/07/2025")
                                    
                                }
                            }
                            .frame(width: 160, height: 130)
                            .shadow(radius: 10)
                            .padding(.horizontal)
                        }
                        
                        
                        
                        HStack {
                            Image(systemName: "calendar.badge.minus")
                            
                            
                            //                                .padding(.horizontal, 20)
                                .font(.title)
                                .foregroundStyle(.accent)
                            
                            Text("Mes éco-anniv passés")
                            //                              .padding(.horizontal,20)
                                .bold()
                        }
                        .frame(width:380, height: 50)
                        .background(Color("Colorbase"))
                        
                        
                        
                        
                        Spacer()
                        HStack{
                            
                            
                        }
                        
                        HStack {
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.white)
                                VStack {
                                    
                                    //
                                    ZStack {
                                        Image("Greentable")
                                            .resizable()
                                            .cornerRadius(5)
                                        VStack {
                                            Text("Restaurant")
                                                .background(Color.white)
                                            Spacer()
                                        }
                                        .padding(.trailing, 50)
                                        .padding(.top, 10)
                                        
                                    }
                                    Text("Ecotable")
                                        .bold()
                                    Divider()
                                        .padding(.horizontal)
                                    Text("Lieu : Paris 75017")
                                        .bold()
                                    Text("02/01/2023")
                                    
                                    
                                }
                            }
                            .frame(width: 160, height: 130)
                            .shadow(radius: 10)
                            .padding(.horizontal)
                            //
                            ZStack {
                                RoundedRectangle(cornerRadius: 5)
                                    .fill(Color.white)
                                VStack {
                                    ZStack {
                                        Image("chillbar")
                                            .resizable()
                                        
                                            .cornerRadius(5)
                                        VStack {
                                            Text("Bar")
                                                .background(Color.white)
                                            Spacer()
                                        }
                                        .padding(.trailing, 100)
                                        .padding(.top, 10)
                                        
                                    }
                                    Text("Chill Bar")
                                        .bold()
                                    Divider()
                                        .padding(.horizontal)
                                    Text("Lieu : Paris 75016")
                                        .bold()
                                    Text("04/01/2024")
                                    
                                }
                            }
                            .frame(width: 160, height: 130)
                            .shadow(radius: 10)
                            .padding(.horizontal)
                        }
                        HStack {
                            Image(systemName: "suit.heart.fill")
                            
                                .padding(.horizontal, 20)
                                .foregroundStyle(.accent)
                            
                            Text("Mes favoris ")
                                .padding(.horizontal, 20)
                                .bold()
                        }
                        .frame(width:300, height: 50)
                        .background(Color("Colorbase"))
                        Spacer()
                        HStack{
                            
                            
                        }
                        
                        HStack {
                            ZStack {
                                RoundedRectangle(cornerRadius: 5)
                                    .fill(Color.white)
                                VStack {
                                    
                                    //
                                    ZStack {
                                        Image("Greentable")
                                            .resizable()
                                            .cornerRadius(5)
                                        VStack {
                                            Text("Restaurant")
                                                .background(Color.white)
                                            Spacer()
                                        }
                                        .padding(.trailing, 50)
                                        .padding(.top, 10)
                                        
                                    }
                                    Text("Ecotable")
                                        .bold()
                                    Divider()
                                        .padding(.horizontal)
                                    Text("Lieu : Paris 75017")
                                        .bold()
                                    Text("02/01/2023")
                                    
                                    
                                }
                            }
                            .frame(width: 160, height: 130)
                            .shadow(radius: 10)
                            .padding(.horizontal)
                            //
                            ZStack {
                                RoundedRectangle(cornerRadius: 5)
                                    .fill(Color.white)
                                VStack {
                                    ZStack {
                                        Image("chillbar")
                                            .resizable()
                                        
                                            .cornerRadius(5)
                                        VStack {
                                            Text("Bar")
                                                .background(Color.white)
                                            Spacer()
                                        }
                                        .padding(.trailing, 100)
                                        .padding(.top, 10)
                                        
                                    }
                                    Text("Chill Bar")
                                        .bold()
                                    Divider()
                                        .padding(.horizontal)
                                    Text("Lieu : Paris 75016")
                                        .bold()
                                    Text("04/01/2024")
                                    
                                }
                            }
                            .frame(width: 160, height: 130)
                            .shadow(radius: 10)
                            .padding(.horizontal)
                        }
                    }
                }
            }
        }
    }
  
        #Preview {
            MonCompteinfo()
            
        }
        
