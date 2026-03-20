import SwiftUI

struct ProfileView: View {
    @State var selection: Int = 1
    var profil: ProfilModel = profils[2]
    
    @State private var selectedSport = 0
    @State private var isExpanded = false
    
    var body: some View {
        NavigationStack {
            ScrollView(.vertical) {
                ZStack {
                    VStack(spacing: 20) {
                        
                        HStack(alignment: .top, spacing: 16) {
                            Image(profil.imageProfil)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 100, height: 140)
                                .clipShape(RoundedRectangle(cornerRadius: 12))
                            
                            VStack(alignment: .leading, spacing: 16) {
                                Text("ATHLÈTE")
                                    .font(.caption2)
                                    .fontWeight(.black)
                                    .fontWidth(.expanded)
                                    .tracking(3)
                                    .foregroundStyle(.fontPrincipal.opacity(0.8))
                                
                                Text("« \(profil.bio) »")
                                    .font(.subheadline)
                                    .italic()
                                    .foregroundStyle(.white.opacity(0.9))
                                    .lineLimit(3)
                                
                                HStack(spacing: 6) {
                                    Image(systemName: "person.2.fill")
                                        .foregroundStyle(.yellowTextButton)
                                    Text("\(profil.follower) abonnés")
                                        .fontWeight(.bold)
                                        .foregroundStyle(.white.opacity(0.85))
                                }
                                .font(.default)
                            }
                            
                            Spacer()
                        }
                        .padding(20)
                        .background(
                            ZStack {
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color.white.opacity(0.08))
                                
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(
                                        LinearGradient(
                                            colors: [
                                                .white.opacity(0.3),
                                                .white.opacity(0.08),
                                                .clear
                                            ],
                                            startPoint: .top,
                                            endPoint: .bottom
                                        ),
                                        lineWidth: 0.5
                                    )
                            }
                        )
                        .shadow(color: .black.opacity(0.6), radius: 16, x: 0, y: 8)
                        .shadow(color: .black.opacity(0.2), radius: 40, x: 0, y: 20)
                        
                        VStack(spacing: 20) {
                            HStack {
                                Image(systemName: "trophy.fill")
                                    .font(.default)
                                    .foregroundStyle(.yellowTextButton)
                                
                                Text("Mes Sports")
                                    .foregroundStyle(.yellowTextButton)
                                    .font(.title2)
                                    .fontWeight(.black)
                                    .fontWidth(.expanded)
                                Spacer()
                            }
                            
                            ScrollView(.horizontal) {
                                HStack {
                                    SingleMySportView(icon: "figure.pool.swim", sportType: profil.sportType[0].type)
                                    SingleMySportView(icon: "figure.yoga", sportType: profil.sportType[1].type)
                                    SingleMySportView(icon: "figure.basketball", sportType: profil.sportType[2].type)
                                }
                            }
                            .scrollIndicators(.never)
                        }
                        
                        HStack {
                            ButtonSingleProfilView(selected: $selection, buttonID: 1, counter: profil.challenge.count, text: "Challenge", iconName: "checkmark")
                            ButtonSingleProfilView(selected: $selection, buttonID: 2, counter: profils[0].badge.count, text: "Badges", iconName: "medal.fill")
                            ButtonSingleProfilView(selected: $selection, buttonID: 3, counter: profils[0].item.count, text: "Items", iconName: "hat.cap.fill")
                        }
                        
                        if selection == 1 {
                            ScrollView {
                                NearbyActivityView(isShowingInformations: false)
                            }
                            .frame(height: 300)
                        } else if selection == 2 {
                            ScrollView {
                                ForEach(profils[0].badge) { badge in
                                    ProfilBadgeView(icon: badge.icon, title: badge.title, sportType: badge.sportType, description: badge.description)
                                }
                            }
                            .frame(height: 300)
                            
                        } else if selection == 3 {
                            ShopView(items: profils[0].item, isShowingInformations: false)
                                .frame(height: 330)
                        }
                        
                        Spacer()
                        
                        HStack {
                            Image(systemName: "trophy.fill")
                                .font(.default)
                                .foregroundStyle(.yellowTextButton)
                            
                            Text("Mes Programmes")
                                .foregroundStyle(.yellowTextButton)
                                .font(.title2)
                                .fontWeight(.black)
                                .fontWidth(.expanded)
                            Spacer()
                        }
                        
                        DisclosureGroup(isExpanded: $isExpanded) {
                            ForEach(0..<profil.sportType.count, id: \.self) { index in
                                Button {
                                    selectedSport = index
                                    withAnimation { isExpanded = false }
                                } label: {
                                    if index == 0 {
                                        HStack {
                                            Image(systemName: "figure.pool.swim")
                                                .font(.title2)
                                                .foregroundStyle(.yellowTextButton)
                                            Text(profil.sportType[index].type)
                                                .font(.title2)
                                                .foregroundStyle(.yellowTextButton)
                                        }
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .padding(.top)
                                    } else if index == 1 {
                                        HStack {
                                            Image(systemName: "figure.yoga")
                                                .font(.title2)
                                                .foregroundStyle(.yellowTextButton)
                                            Text(profil.sportType[index].type)
                                                .font(.title2)
                                                .foregroundStyle(.yellowTextButton)
                                        }
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .padding(.top)
                                    } else if index == 2 {
                                        HStack {
                                            Image(systemName: "figure.basketball")
                                                .font(.title2)
                                                .foregroundStyle(.yellowTextButton)
                                            Text(profil.sportType[index].type)
                                                .font(.title2)
                                                .foregroundStyle(.yellowTextButton)
                                        }
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .padding(.top)
                                    }
                                }
                            }
                        } label: {
                            if selectedSport == 0 {
                                SingleMySportView(icon: "figure.pool.swim", sportType: profil.sportType[selectedSport].type)
                                    .foregroundStyle(.black141414)
                                    .tint(.fontPrincipal)
                            } else if selectedSport == 1 {
                                SingleMySportView(icon: "figure.yoga", sportType: profil.sportType[selectedSport].type)
                                    .foregroundStyle(.black141414)
                                    .tint(.fontPrincipal)
                            } else if selectedSport == 2 {
                                SingleMySportView(icon: "figure.basketball", sportType: profil.sportType[selectedSport].type)
                                    .foregroundStyle(.black141414)
                                    .tint(.fontPrincipal)
                            }
                        }
                        .frame(alignment: .leading)
                        .accentColor(.yellowTextButton)
                        .disclosureGroupStyle(YellowArrowDisclosureStyle())
                        .padding(.trailing)
                        
                        // ── TABLEAUX DES PROGRAMMES ──
                        
                        if selectedSport == 0 {
                            VStack(alignment: .leading, spacing: 0) {
                                HStack {
                                    Text("Jour").frame(width: 60, alignment: .leading).font(.caption)
                                    Text("Exercice").frame(maxWidth: .infinity, alignment: .leading).font(.caption)
                                    Text("Reps").frame(width: 40, alignment: .center).font(.caption)
                                    Text("Séries").frame(width: 45, alignment: .center).font(.caption)
                                    Text("Repos").frame(width: 45, alignment: .trailing).font(.caption)
                                }
                                .fontWeight(.bold)
                                .foregroundStyle(.yellowTextButton)
                                .padding(.vertical, 8)
                                
                                Divider().background(.gray)
                                
                                HStack {
                                    Text("Lun").frame(width: 60, alignment: .leading)
                                    Text("Crawl endurance").frame(maxWidth: .infinity, alignment: .leading)
                                    Text("1").frame(width: 40, alignment: .center)
                                    Text("3").frame(width: 45, alignment: .center)
                                    Text("60s").frame(width: 45, alignment: .trailing)
                                }
                                .padding(.vertical, 6)
                                
                                Divider().background(.gray.opacity(0.3))
                                
                                HStack {
                                    Text("Mar").frame(width: 60, alignment: .leading)
                                    Text("Dos crawlé").frame(maxWidth: .infinity, alignment: .leading)
                                    Text("2").frame(width: 40, alignment: .center)
                                    Text("4").frame(width: 45, alignment: .center)
                                    Text("60s").frame(width: 45, alignment: .trailing)
                                }
                                .padding(.vertical, 6)
                                
                                Divider().background(.gray.opacity(0.3))
                                
                                HStack {
                                    Text("Mer").frame(width: 60, alignment: .leading)
                                    Text("Repos").frame(maxWidth: .infinity, alignment: .leading)
                                    Text("-").frame(width: 40, alignment: .center)
                                    Text("-").frame(width: 45, alignment: .center)
                                    Text("-").frame(width: 45, alignment: .trailing)
                                }
                                .padding(.vertical, 6)
                                
                                Divider().background(.gray.opacity(0.3))
                                
                                HStack {
                                    Text("Jeu").frame(width: 60, alignment: .leading)
                                    Text("Brasse technique").frame(maxWidth: .infinity, alignment: .leading)
                                    Text("3").frame(width: 40, alignment: .center)
                                    Text("4").frame(width: 45, alignment: .center)
                                    Text("45s").frame(width: 45, alignment: .trailing)
                                }
                                .padding(.vertical, 6)
                                
                                Divider().background(.gray.opacity(0.3))
                                
                                HStack {
                                    Text("Ven").frame(width: 60, alignment: .leading)
                                    Text("Papillon sprints").frame(maxWidth: .infinity, alignment: .leading)
                                    Text("4").frame(width: 40, alignment: .center)
                                    Text("5").frame(width: 45, alignment: .center)
                                    Text("60s").frame(width: 45, alignment: .trailing)
                                }
                                .padding(.vertical, 6)
                                
                                Divider().background(.gray.opacity(0.3))
                                
                                HStack {
                                    Text("Sam").frame(width: 60, alignment: .leading)
                                    Text("Nage libre mixte").frame(maxWidth: .infinity, alignment: .leading)
                                    Text("2").frame(width: 40, alignment: .center)
                                    Text("6").frame(width: 45, alignment: .center)
                                    Text("90s").frame(width: 45, alignment: .trailing)
                                }
                                .padding(.vertical, 6)
                                
                                Divider().background(.gray.opacity(0.3))
                                
                                HStack {
                                    Text("Dim").frame(width: 60, alignment: .leading)
                                    Text("Repos").frame(maxWidth: .infinity, alignment: .leading)
                                    Text("-").frame(width: 40, alignment: .center)
                                    Text("-").frame(width: 45, alignment: .center)
                                    Text("-").frame(width: 45, alignment: .trailing)
                                }
                                .padding(.vertical, 6)
                            }
                            .font(.subheadline)
                            .foregroundStyle(.white)
                            .padding()
                            .background(.blocColorGray)
                            .cornerRadius(12)
                            
                        } else if selectedSport == 1 {
                            VStack(alignment: .leading, spacing: 0) {
                                HStack {
                                    Text("Jour").frame(width: 60, alignment: .leading).font(.caption)
                                    Text("Exercice").frame(maxWidth: .infinity, alignment: .leading).font(.caption)
                                    Text("Reps").frame(width: 40, alignment: .center).font(.caption)
                                    Text("Séries").frame(width: 45, alignment: .center).font(.caption)
                                    Text("Repos").frame(width: 45, alignment: .trailing).font(.caption)
                                }
                                .fontWeight(.bold)
                                .foregroundStyle(.yellowTextButton)
                                .padding(.vertical, 8)
                                
                                Divider().background(.gray)
                                
                                HStack {
                                    Text("Lun").frame(width: 60, alignment: .leading)
                                    Text("Salutation soleil").frame(maxWidth: .infinity, alignment: .leading)
                                    Text("5").frame(width: 40, alignment: .center)
                                    Text("3").frame(width: 45, alignment: .center)
                                    Text("30s").frame(width: 45, alignment: .trailing)
                                }
                                .padding(.vertical, 6)
                                
                                Divider().background(.gray.opacity(0.3))
                                
                                HStack {
                                    Text("Mar").frame(width: 60, alignment: .leading)
                                    Text("Yoga restauratif").frame(maxWidth: .infinity, alignment: .leading)
                                    Text("1").frame(width: 40, alignment: .center)
                                    Text("2").frame(width: 45, alignment: .center)
                                    Text("60s").frame(width: 45, alignment: .trailing)
                                }
                                .padding(.vertical, 6)
                                
                                Divider().background(.gray.opacity(0.3))
                                
                                HStack {
                                    Text("Mer").frame(width: 60, alignment: .leading)
                                    Text("Repos").frame(maxWidth: .infinity, alignment: .leading)
                                    Text("-").frame(width: 40, alignment: .center)
                                    Text("-").frame(width: 45, alignment: .center)
                                    Text("-").frame(width: 45, alignment: .trailing)
                                }
                                .padding(.vertical, 6)
                                
                                Divider().background(.gray.opacity(0.3))
                                
                                HStack {
                                    Text("Jeu").frame(width: 60, alignment: .leading)
                                    Text("Vinyasa flow").frame(maxWidth: .infinity, alignment: .leading)
                                    Text("4").frame(width: 40, alignment: .center)
                                    Text("3").frame(width: 45, alignment: .center)
                                    Text("30s").frame(width: 45, alignment: .trailing)
                                }
                                .padding(.vertical, 6)
                                
                                Divider().background(.gray.opacity(0.3))
                                
                                HStack {
                                    Text("Ven").frame(width: 60, alignment: .leading)
                                    Text("Repos").frame(maxWidth: .infinity, alignment: .leading)
                                    Text("-").frame(width: 40, alignment: .center)
                                    Text("-").frame(width: 45, alignment: .center)
                                    Text("-").frame(width: 45, alignment: .trailing)
                                }
                                .padding(.vertical, 6)
                                
                                Divider().background(.gray.opacity(0.3))
                                
                                HStack {
                                    Text("Sam").frame(width: 60, alignment: .leading)
                                    Text("Power yoga").frame(maxWidth: .infinity, alignment: .leading)
                                    Text("6").frame(width: 40, alignment: .center)
                                    Text("4").frame(width: 45, alignment: .center)
                                    Text("45s").frame(width: 45, alignment: .trailing)
                                }
                                .padding(.vertical, 6)
                                
                                Divider().background(.gray.opacity(0.3))
                                
                                HStack {
                                    Text("Dim").frame(width: 60, alignment: .leading)
                                    Text("Méditation").frame(maxWidth: .infinity, alignment: .leading)
                                    Text("1").frame(width: 40, alignment: .center)
                                    Text("1").frame(width: 45, alignment: .center)
                                    Text("-").frame(width: 45, alignment: .trailing)
                                }
                                .padding(.vertical, 6)
                            }
                            .font(.subheadline)
                            .foregroundStyle(.white)
                            .padding()
                            .background(.blocColorGray)
                            .cornerRadius(12)
                            
                        } else if selectedSport == 2 {
                            VStack(alignment: .leading, spacing: 0) {
                                HStack {
                                    Text("Jour").frame(width: 60, alignment: .leading).font(.caption)
                                    Text("Exercice").frame(maxWidth: .infinity, alignment: .leading).font(.caption)
                                    Text("Reps").frame(width: 40, alignment: .center).font(.caption)
                                    Text("Séries").frame(width: 45, alignment: .center).font(.caption)
                                    Text("Repos").frame(width: 45, alignment: .trailing).font(.caption)
                                }
                                .fontWeight(.bold)
                                .foregroundStyle(.yellowTextButton)
                                .padding(.vertical, 8)
                                
                                Divider().background(.gray)
                                
                                HStack {
                                    Text("Lun").frame(width: 60, alignment: .leading)
                                    Text("Dribbles intensifs").frame(maxWidth: .infinity, alignment: .leading)
                                    Text("10").frame(width: 40, alignment: .center)
                                    Text("4").frame(width: 45, alignment: .center)
                                    Text("60s").frame(width: 45, alignment: .trailing)
                                }
                                .padding(.vertical, 6)
                                
                                Divider().background(.gray.opacity(0.3))
                                
                                HStack {
                                    Text("Mar").frame(width: 60, alignment: .leading)
                                    Text("Tirs mi-distance").frame(maxWidth: .infinity, alignment: .leading)
                                    Text("8").frame(width: 40, alignment: .center)
                                    Text("5").frame(width: 45, alignment: .center)
                                    Text("90s").frame(width: 45, alignment: .trailing)
                                }
                                .padding(.vertical, 6)
                                
                                Divider().background(.gray.opacity(0.3))
                                
                                HStack {
                                    Text("Mer").frame(width: 60, alignment: .leading)
                                    Text("Repos").frame(maxWidth: .infinity, alignment: .leading)
                                    Text("-").frame(width: 40, alignment: .center)
                                    Text("-").frame(width: 45, alignment: .center)
                                    Text("-").frame(width: 45, alignment: .trailing)
                                }
                                .padding(.vertical, 6)
                                
                                Divider().background(.gray.opacity(0.3))
                                
                                HStack {
                                    Text("Jeu").frame(width: 60, alignment: .leading)
                                    Text("Défense footwork").frame(maxWidth: .infinity, alignment: .leading)
                                    Text("6").frame(width: 40, alignment: .center)
                                    Text("4").frame(width: 45, alignment: .center)
                                    Text("45s").frame(width: 45, alignment: .trailing)
                                }
                                .padding(.vertical, 6)
                                
                                Divider().background(.gray.opacity(0.3))
                                
                                HStack {
                                    Text("Ven").frame(width: 60, alignment: .leading)
                                    Text("Match simulé").frame(maxWidth: .infinity, alignment: .leading)
                                    Text("1").frame(width: 40, alignment: .center)
                                    Text("1").frame(width: 45, alignment: .center)
                                    Text("-").frame(width: 45, alignment: .trailing)
                                }
                                .padding(.vertical, 6)
                                
                                Divider().background(.gray.opacity(0.3))
                                
                                HStack {
                                    Text("Sam").frame(width: 60, alignment: .leading)
                                    Text("Lancers francs").frame(maxWidth: .infinity, alignment: .leading)
                                    Text("20").frame(width: 40, alignment: .center)
                                    Text("3").frame(width: 45, alignment: .center)
                                    Text("30s").frame(width: 45, alignment: .trailing)
                                }
                                .padding(.vertical, 6)
                                
                                Divider().background(.gray.opacity(0.3))
                                
                                HStack {
                                    Text("Dim").frame(width: 60, alignment: .leading)
                                    Text("Repos").frame(maxWidth: .infinity, alignment: .leading)
                                    Text("-").frame(width: 40, alignment: .center)
                                    Text("-").frame(width: 45, alignment: .center)
                                    Text("-").frame(width: 45, alignment: .trailing)
                                }
                                .padding(.vertical, 6)
                            }
                            .font(.subheadline)
                            .foregroundStyle(.white)
                            .padding()
                            .background(.blocColorGray)
                            .cornerRadius(12)
                        }
                    }
                }
            }
            .scrollIndicators(.hidden)
            .globalPageStyle()
            
            .toolbar {
                ToolbarItem(placement: .principal) {
                    VStack(spacing: 4) {
                        HStack(spacing: 8) {
                            Text(profil.pseudo)
                                .font(.title2)
                                .fontWeight(.black)
                                .fontWidth(.expanded)
                                .foregroundStyle(.fontPrincipal)
                            
                            ZStack {
                                RoundedRectangle(cornerRadius: 16)
                                    .foregroundStyle(.yellowTextButton)
                                    .frame(width: 55, height: 35)
                                Text("Pro")
                                    .font(.title3)
                                    .foregroundStyle(.boxingEventBackgroundLow)
                                    .fontWeight(.bold)
                            }
                        }
                        
                        Text(profil.adress)
                            .foregroundStyle(.fontPrincipal)
                            .fontWeight(.bold)
                            .font(.subheadline)
                    }
                    .padding(.top, 45)
                    .padding(.bottom, 30)
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Menu {
                        // ── Section Profil ──
                        Section("Profil") {
                            Button("Modifier le profil", systemImage: "pencil") { }
                            Button("Changer la photo", systemImage: "camera.fill") { }
                            Button("Partager le profil", systemImage: "square.and.arrow.up") { }
                        }
                        
                        // ── Section Paramètres ──
                        Section("Paramètres") {
                            Button("Notifications", systemImage: "bell.fill") { }
                            Button("Confidentialité", systemImage: "lock.fill") { }
                            Button("Apparence", systemImage: "paintbrush.fill") { }
                        }
                        
                        // ── Section Compte ──
                        Section("Compte") {
                            Button("Aide & Support", systemImage: "questionmark.circle.fill") { }
                            Button("Se déconnecter", systemImage: "rectangle.portrait.and.arrow.right") { }
                            Button(role: .destructive) {
                                // action
                            } label: {
                                Label("Supprimer le compte", systemImage: "trash.fill")
                            }
                        }
                    } label: {
                        Image(systemName: "ellipsis")
                    }
                }
                
            }
            
            .toolbarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ProfileView()
}

struct YellowArrowDisclosureStyle: DisclosureGroupStyle {
    func makeBody(configuration: Configuration) -> some View {
        Button {
            withAnimation { configuration.isExpanded.toggle() }
        } label: {
            HStack {
                configuration.label
                Spacer()
                Image(systemName: "chevron.down")
                    .foregroundStyle(.yellowTextButton)
                    .rotationEffect(.degrees(configuration.isExpanded ? -180 : 0))
                    .animation(.easeInOut(duration: 0.25), value: configuration.isExpanded)
            }
        }
        .buttonStyle(.plain)
        
        if configuration.isExpanded {
            configuration.content
        }
    }
}
