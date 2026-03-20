    //
    //  ProfilView.swift
    //  SPORTSWay's
    //
    //  Created by apprenant100 on 13/03/2026.
    //

    import SwiftUI

struct ProfileView: View {
    @State var selection: Int = 1
    var profil: ProfilModel = profils[0]
    
    var body: some View {
        ScrollView(.vertical){
            ZStack{
                VStack(spacing: 20){
                    VStack{
                        HStack{
                            Text(profil.pseudo)
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundStyle(.fontPrincipal)
                            ZStack{
                                RoundedRectangle(cornerRadius:16)
                                    .foregroundStyle(.yellowTextButton)
                                    .frame(width: 55, height: 35)
                                Text("Pro")
                                    .font(.title3)
                                    .foregroundStyle(.boxingEventBackgroundLow)
                                    .fontWeight(.bold)
                            }
                        }
                        
                        Text(profil.adress)
                            .foregroundStyle(.statutPartial)
                            .fontWeight(.bold)
                            .font(.title2)
                    }
                    
                    Divider()
                        .overlay(.white)
                        .frame(height: 3)
                    
                    
                    HStack(spacing : 10){
                        Image(.amanda1)
                            .resizable()
                            .frame(width: 140, height: 140)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                        
                        
                        VStack(alignment: .leading, spacing: 38){
                            Text(profil.bio)
                                .font(.title3)
                                .foregroundStyle(.white)
                                .fontWeight(.bold)
                            
                            HStack{
                                Image(systemName: "person.2.fill")
                                    .font(.title3)
                                    .foregroundStyle(.yellowTextButton)
                                
                                Text("\(profil.follower) followers")
                                    .font(.title3)
                                    .foregroundStyle(.fontPrincipal)
                                    .fontWeight(.bold)
                                
                            }
                        }
                        
                        Spacer()
                    }
                    Divider()
                        .overlay(.white)
                        .frame(height: 3)
                    
                    
                    VStack(spacing: 14){
                        HStack{
                            Image(systemName: "trophy.fill")
                                .font(.default)
                                .foregroundStyle(.yellowTextButton)
                            
                            Text("Mes Sports")
                                .foregroundStyle(.yellowTextButton)
                                .font(.title)
                                .fontWeight(.bold)
                            Spacer()
                        }
                        
                        ScrollView(.horizontal){
                            HStack{
                                
                                SingleMySportView(icon: "figure.run", sportType: profil.sportType[0].type)
                                SingleMySportView(icon: "figure.boxing", sportType: profil.sportType[1].type)
                                SingleMySportView(icon: "figure.yoga", sportType: profil.sportType[2].type)
                            }
                        }
                        .scrollIndicators(.never)
                    }
                    
                    
                    HStack{
                        ButtonSingleProfilView(selected: $selection, buttonID: 1, counter: profil.challenge.count, text: "Challenge", iconName: "checkmark")
                        ButtonSingleProfilView(selected: $selection, buttonID: 2, counter: profils[0].badge.count, text: "Badges", iconName: "medal.fill")
                        ButtonSingleProfilView(selected: $selection, buttonID: 3, counter: profils[0].item.count, text: "Items", iconName: "hat.cap.fill")
                    }
                    
                    if selection == 1{
                        ScrollView {
                            ForEach(profil[0].challenge) { item in
                                SingleShopView(
                                    image: item.image,
                                    name: item.title,
                                    category: item.label,
                                    points: item.point
                                )
                                
                                Divider()
                                    .overlay(.yellowTextButton)
                                    .frame(height: 20)
                                
                            }
                        }
                        .scrollIndicators(.hidden)
                    } else if selection == 3 {
                        ScrollView {
                            ForEach(events) { event in
                                SingleEventView(singleEvent: event)
                                
                                Divider()
                                    .overlay(.yellowTextButton)
                                    .frame(height: 20)
                                
                            }
                        }
                        .scrollIndicators(.hidden)
                    }
                    
                    
                }
                
            }
        }
        .globalPageStyle()
    }

}


#Preview {
    ProfileView()
}
