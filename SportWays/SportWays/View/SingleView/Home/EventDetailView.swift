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
    var profileImageGrab: ProfilModel
    var eventDifficulty: EventLevelModel

    @State var hasJoinedEvent: Bool = false
    let eventEnrolDict:[Bool:String] = [true:"Quitter",false:"Rejoindre"]
    
    
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
                    .scaledToFit()
                    .overlay(LinearGradient(gradient: Gradient(stops: [
                        Gradient.Stop(color: .black141414.opacity(0), location: 0.5),
                        Gradient.Stop(color: .black141414.opacity(0.8), location: 0.8),
                        Gradient.Stop(color: .black141414, location: 1.0)                                     ]),
                                            startPoint: .top,
                                            endPoint: .bottom))
                
                
                Text(eventInfoGrab.sportType.type)
                    .foregroundStyle(.white)
                    .fontWeight(.black)
                    .fontWidth(.expanded)
                    .font(.title2)
                    .padding(.horizontal)
                    .padding(.top)
                    .shadow(color: .black ,radius: 12)
//                    .padding(.bottom,256)
                }
            VStack(alignment: .leading){
                
                
                HStack{
                    
                    Text(eventInfoGrab.city)
                        .foregroundColor(.white)
                        .fontWeight(.black)
                        .fontWidth(.expanded)
                        .font(.system(size: 24))
                        .padding(.bottom, 36)
                    
                        
                }
                HStack{
                    Image(systemName: "mappin.and.ellipse")
                        .foregroundStyle(.yellowTextButton)
                    Text(eventInfoGrab.localisation)
                        .foregroundStyle(.white)
                        .font(.subheadline)
                        .fontWeight(.regular)
                        .fontWidth(.expanded)
                        
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
                    .frame(maxWidth: .infinity)
                    .frame(height: 1)
                    .padding(.trailing, 76)
                
//
                Text(eventInfoGrab.description)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                    .padding(.bottom)
                    .padding(.top)
                    .fontWeight(.medium)
                    .lineLimit(4, reservesSpace: true)
                
                Rectangle()
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .frame(height: 1)
                    .padding(.trailing, 76)
           
                
                
                HStack{
                    Text("PARTCIPANTS")
                        .foregroundStyle(.white)
                        .fontWeight(.black)
                        .fontWidth(.expanded)
                        .shadow(radius: 5)
                        .padding(.bottom)
                        .padding(.top)
                    
                    Spacer()
                    Text(eventDifficulty.label)
                        .foregroundStyle(.orange)
                        .padding(.trailing, 8)
                        .padding(.bottom)
                        .padding(.top)
                        .fontWidth(.expanded)
                        .fontWeight(.bold)
                }
                
                
                HStack{
                    ZStack{
                        
                        Image(profils[0].imageProfil)
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .frame(height: 84)
                        //                        .padding(.bottom, 76)
                            .padding(.trailing, 12)
                            .shadow(color: .black ,radius: 12)
                        
                        Image(.lebron1)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 84)
                            .clipShape(Circle())
                            .scaledToFill()
                        //                        .padding(.bottom, 76)
                            .padding(.trailing, 36)
                            .shadow(color: .black ,radius: 12)
                        
                        Image(profils[2].imageProfil)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 84)
                            .clipShape(Circle())
                        //                        .padding(.bottom, 76)
                            .padding(.trailing, 68)
                            .shadow(color: .black ,radius: 12)
                        
                        
                        
                        
                        
                    }
                    
                }
            
                Spacer()
                
            }
           
            .padding(.horizontal)
            .padding(.bottom, 16)
            
            Button {
               hasJoinedEvent.toggle()
           } label : {
               Text((eventEnrolDict[hasJoinedEvent])!)
                   .foregroundStyle(.black141414)
                   .padding(.horizontal)
                   .padding(.vertical, 4)
                   .glassEffect(.clear.tint(.yellowTextButton))
                   .font(.title2)
                   .fontWidth(.expanded)
                   .fontWeight(.semibold)
           }
            
            Spacer()
        }
        .frame(maxWidth: .infinity, alignment: .leading)
//        .padding(.horizontal)
        .background(.black141414) //A CHANGER PARCE QUE L'ASSET BACKGROUND A COMME NOM .background Y A DONC BAGARRE ENTRE LA COULEUR ET LE MODIFICATEUR
        // merce bogoss
    }
}

#Preview {
    EventDetailView(eventInfoGrab: events[0], profileImageGrab: profils[0], eventDifficulty: eventLevels[0])
}




