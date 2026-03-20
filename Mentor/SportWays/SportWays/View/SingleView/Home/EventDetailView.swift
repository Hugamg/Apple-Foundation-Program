// MARK : Modified by Adam, ;; à venir, une fonction qui prendra un tuple, qui sera utilisé pour imprimer le bon string de SFSymbols

//
//  NearbyActivitieView.swift
//  SPORTSWay's
//
//  Created by apprenant100 on 13/03/2026.
//
// MARK : Modified by Adam
//C'EST UNE SHEET POUR L'EVENT NE PAS PRENDRE EN COMPTE LE TITRE
import SwiftUI

struct EventDetailView: View {
    var eventInfoGrab: EventModel
    
//    if eventInfoGrab.numbersOfPersonCurrent == eventInfoGrab.numbersOfPersonMax {
//            return .red
//        } else if (eventInfoGrab.numbersOfPersonCurrent * 100 / eventInfoGrab.numbersOfPersonMax) >= 75 {
//            return .orange
//        } else {
//            return .green
//        }
    func getNumberColor(numbersOfPersonCurrent: Int, numbersOfPersonMax: Int) -> Color {
        if numbersOfPersonCurrent == numbersOfPersonMax {
            return .statutComplet
        }
        else if (numbersOfPersonCurrent * 100 / numbersOfPersonMax) >= 75 {
            return .statutPartial
        } else {
            return .statutFree
        }
    }
    
    var body: some View {
        VStack{
            
            ZStack(alignment: .top){
                Image(eventInfoGrab.image)
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: .infinity, maxHeight: 300)
                    .overlay(LinearGradient(gradient: Gradient(stops: [
                        Gradient.Stop(color: .black.opacity(0), location: 0.5),
                        Gradient.Stop(color: .black.opacity(0.8), location: 0.8),
                        Gradient.Stop(color: .black, location: 1.0)                                     ]),
                                            startPoint: .top,
                                            endPoint: .bottom))
                
                
                Text(eventInfoGrab.localisation)
                    .foregroundStyle(.white)
                    .fontWeight(.bold)
//                    .padding(.bottom,256)
                }
            VStack(alignment: .leading){
                
                
                HStack{
                    
                    Text(eventInfoGrab.localisation)
                        .foregroundColor(.white)
                        .fontWeight(.black)
                        .font(.system(size: 24))
                        .padding(.bottom, 36)
                        
                }
                HStack{
                    Image(systemName: "mappin.and.ellipse")
                        .foregroundStyle(.yellowTextButton)
                    Text(eventInfoGrab.localisation)
                        .foregroundStyle(.white)
                        .fontWeight(.regular)
                        Spacer()
                    Image(systemName: "circle.fill")
                        .foregroundColor(
                            getNumberColor(numbersOfPersonCurrent: eventInfoGrab.numbersOfPersonCurrent,
                                numbersOfPersonMax: eventInfoGrab.numbersOfPersonMax)
                        )
                    Image(systemName: "person.fill")
                        .foregroundStyle(.white)
                        .font(.system(size: 24))
                        .padding(-8)
                        
                    Text("\(eventInfoGrab.numbersOfPersonCurrent) / \(eventInfoGrab.numbersOfPersonMax)")
                        .foregroundStyle(.white)
                        .fontWeight(.black)
                        .font(.system(size: 24))
                        
                        
                        
                }
                .padding(.bottom)
                
                Rectangle()
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity, maxHeight: 1)
                    .padding(.trailing, 76)
                
                Text("il manque des trucs dans la struct eventmodel donc PLACEHOLDER placeholder PLACEHOLDER placeholder PLACEHOLDER placeholder")
                    .foregroundStyle(.white)
                    .padding(.top)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.trailing, 76)
                    .padding(.bottom)
                    .fontWeight(.medium)
                
                
                Rectangle()
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity, maxHeight: 1)
                    .padding(.trailing, 76)
                
                Text("PARTCIPANTS")
                    .foregroundStyle(.white)
                    .fontWeight(.black)
                
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Spacer()
        }
        .padding(.horizontal)
        .background(.black141414) //A CHANGER PARCE QUE L'ASSET BACKGROUND A COMME NOM .background Y A DONC BAGARRE ENTRE LA COULEUR ET LE MODIFICATEUR
    }
}

#Preview {
    EventDetailView(eventInfoGrab: events[0])
}



