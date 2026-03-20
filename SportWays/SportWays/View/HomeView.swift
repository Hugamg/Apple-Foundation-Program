import SwiftUI

struct HomeView: View {
    
    var isShowingInformations: Bool = true
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                
                ScrollView {
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(profils) { profil in
                                Button {
                                    
                                } label: {
                                    VStack {
                                        Image(profil.imageProfil)
                                            .resizable()
                                            .clipShape(.circle)
                                            .scaledToFill()
                                            .frame(width: 76, height: 76)
                                        Text(profil.pseudo)
                                            .foregroundStyle(.white)
                                    }
                                    .frame(width: 100, height: 100)
                                }
                                .padding(.bottom)
                            }
                        }
                    }
                    .scrollIndicators(.never)
                    //                    .frame(maxHeight: 100)
                    
                    VStack(spacing: 28) {
                        CategoriesCalledViews(categoriesEvents: sportTypes[0], eventPastille: events[0], secondEventPastille: events[1])
                        CategoriesCalledViews(categoriesEvents: sportTypes[1], eventPastille: events[3], secondEventPastille: events[4])
                        CategoriesCalledViews(categoriesEvents: sportTypes[2], eventPastille: events[6], secondEventPastille: events[7])
                        CategoriesCalledViews(categoriesEvents: sportTypes[3], eventPastille: events[9], secondEventPastille: events[10])
                        CategoriesCalledViews(categoriesEvents: sportTypes[4], eventPastille: events[15], secondEventPastille: events[16])
                        CategoriesCalledViews(categoriesEvents: sportTypes[5], eventPastille: events[12], secondEventPastille: events[13])
                        CategoriesCalledViews(categoriesEvents: sportTypes[6], eventPastille: events[19], secondEventPastille: events[21])
                        CategoriesCalledViews(categoriesEvents: sportTypes[7], eventPastille: events[22], secondEventPastille: events[24])
                        CategoriesCalledViews(categoriesEvents: sportTypes[8], eventPastille: events[25], secondEventPastille: events[27])
                        CategoriesCalledViews(categoriesEvents: sportTypes[9], eventPastille: events[28], secondEventPastille: events[30])
                        CategoriesCalledViews(categoriesEvents: sportTypes[10], eventPastille: events[31], secondEventPastille: events[33])
                        CategoriesCalledViews(categoriesEvents: sportTypes[11], eventPastille: events[34], secondEventPastille: events[36])
                        CategoriesCalledViews(categoriesEvents: sportTypes[12], eventPastille: events[37], secondEventPastille: events[39])
                        CategoriesCalledViews(categoriesEvents: sportTypes[13], eventPastille: events[17], secondEventPastille: events[18])
                    }
                    .padding(.top)
                }
            }
            .padding(.horizontal, 4)
            .globalPageStyle()
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle("nbwrevbiowrb")
            .navigationBarTitleDisplayMode(.inline)
            
            .toolbar {
                if isShowingInformations{
                    ToolbarItem(placement: .principal) {
                        Text("Évènements")
                            .font(.title3)
                            .foregroundStyle(.fontPrincipal)
                            .fontWeight(.black)
                            .fontWidth(.expanded)
                    }
                    
                    ToolbarItem(placement: .topBarTrailing) {
                        Menu {
                            Section("Filtrer") {
                                Button("Tous les sports", systemImage: "figure.run") { }
                                Button("Près de moi", systemImage: "location.fill") { }
                                Button("Cette semaine", systemImage: "calendar") { }
                            }
                            
                            Section("Affichage") {
                                Button("Favoris", systemImage: "heart.fill") { }
                                Button("Notifications", systemImage: "bell.fill") { }
                            }
                        } label: {
                            Image(systemName: "slider.horizontal.3")
                            
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        HomeView(isShowingInformations: true)
    }
}
