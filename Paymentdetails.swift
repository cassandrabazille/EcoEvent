//
//  Payment.swift
//  EcoEvent
//
//  Created by Apprenant120 on 16/12/2024.
//

import SwiftUI

struct Payment {
    var paymentMode = ["PayPal", "Carte de crédit", "Apple Pay"]
}

struct PaymentView: View {
    @State private var selectedPaymentMode = "Carte de crédit"
    @State private var cardNumber = ""
    @State private var expirationDate = ""
    @State private var cvc = ""
    @State private var nameOnCard = ""
    @State private var billingAddress = ""

    var body: some View {
//        NavigationStack {
            VStack(spacing: 15) {
                
               //NAV VERS LA PAGE PANIER
                
//                
//                NavigationLink(destination: PanierContenu()) {
//                    Image(systemName: "arrow.left.circle.fill")
//                        .resizable()
//                        .foregroundStyle(Color("AccentColor"))
//                        .frame(width: 20, height: 20)
//                        .padding(.trailing, 350)
//                        .padding(.bottom, 15)
//                }
                
                
                
                
                
                
                
                VStack(spacing: 10) {
                    Text("Choisir le mode de paiement")
                        .font(.headline)
                    
                    Text("L'empreinte bancaire garantit la réservation mais aucun paiement ne sera effectué.")
                        .font(.subheadline)
                        .multilineTextAlignment(.center)
                }
                .frame(width: 353, height: 70)
                .background(Color("Colorbase"))
               
                
                
                
                //choix paiement

                VStack(spacing: 15) {
                    PaymentOptionRow(label: "PayPal", imageName: "paypal", isSelected: selectedPaymentMode == "PayPal") {
                        selectedPaymentMode = "PayPal"
                    }

                    PaymentOptionRow(label: "Carte de crédit", imageName: "carte", isSelected: selectedPaymentMode == "Carte de crédit") {
                        selectedPaymentMode = "Carte de crédit"
                    }

                    PaymentOptionRow(label: "Apple Pay", imageName: "applepay", isSelected: selectedPaymentMode == "Apple Pay") {
                        selectedPaymentMode = "Apple Pay"
                    }
                }
                

                
                //PAIEMENT sécurisé
                HStack(spacing: 8) {
                    Image(systemName: "shield.righthalf.filled")
                        .foregroundColor(.black)
                        .accessibilityLabel("Paiement sécurisé")
                    Text("Paiement sécurisé")
                        .font(.body)
                        .fontWeight(.medium)
                }
                .frame(maxWidth: .infinity, alignment: .center)
                
                
             //mode de paiement //formulaire
             if selectedPaymentMode == "Carte de crédit" {
                    VStack(spacing: 10) {
                        TextField("Numéro de carte", text: $cardNumber)
                            .textFieldStyle(RoundedBorderTextFieldStyle())

                        TextField("Date d'expiration (MM/YYYY)", text: $expirationDate)
                            .textFieldStyle(RoundedBorderTextFieldStyle())

                        SecureField("CVC", text: $cvc)
                            .textFieldStyle(RoundedBorderTextFieldStyle())

                        TextField("Nom sur la carte", text: $nameOnCard)
                            .textFieldStyle(RoundedBorderTextFieldStyle())

                        TextField("Adresse de facturation", text: $billingAddress)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                }
               

                HStack(spacing: 20) {
                    VStack {
                        Text("Total")
                            .font(.headline)
                            .bold()
                        TextField("€", text: .constant(""))
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .frame(width: 91)
                    }
                    .frame(width: 150)

                    Spacer()
                }
                
                VStack(spacing: 10) {
                    HStack {
                        Text("Sauvegarder cette carte")
                        Image(systemName: "checkmark.square") //  SF Symbols
                    }
                }

                
                

             //NavigationLink 2 vers la page DemandeDeReservationInfo
                NavigationLink(destination: DemandeDeReservationInfo()) {
                    Text("Confirmer votre commande")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color("AccentColor"))
                        .cornerRadius(8)
                    
                    
                    
                }
                
                
             .padding(.top, 20)
                
                
            }
            .padding(.horizontal)
//        }
    }
}

struct PaymentOptionRow: View {
    let label: String
    let imageName: String
    let isSelected: Bool
    let action: () -> Void


    //sf sym checkmark
    var body: some View {
        HStack(spacing: 15) {
            Image(systemName: isSelected ? "checkmark.circle.fill" : "circle")
                .foregroundColor(isSelected ? .black : .gray)
                .font(.system(size: 24))
                .onTapGesture(perform: action)

            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30)

            Text(label)
                .foregroundColor(.primary)
                .font(.body)

            Spacer()
        }
        .padding()
        .background(Color(UIColor.systemGray6))
        .cornerRadius(8)
        .onTapGesture(perform: action)
    }
    

    
}







struct PaymentView_Previews: PreviewProvider {
    static var previews: some View {
        PaymentView()
    }
}



 //VStack {
    // HStack{
         
     
 //   Text(" J’enregistre cette carte pour de futures commandes")
//Image(systemName: "case-a-cocher"

        // .frame(width: (150), height: 15)
//}
//}


//
// Vue de confirmation après la commande


        


