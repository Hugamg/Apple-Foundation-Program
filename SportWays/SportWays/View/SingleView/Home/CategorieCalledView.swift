import SwiftUI


/* variable categoriesEvents pour recuperer le string du type d'event et une variable pour utiliser ces strings, en faire un switch et modifier les couleurs pour chaque type de sport
 
 Ne pas oublier que j'ai touché aux couleurs dans les assets
 */

struct CategoriesCalledViews: View {
    
    var categoriesEvents: SportTypeModel
    var eventPastille: EventModel
    var secondEventPastille: EventModel
   
    
    @State var showSheet: Bool = false
    @State var showSheetSsecond: Bool = false
    
    
    var topGradientColor: Color {
        switch categoriesEvents.type {
        case "Football": return .footballEventBackgroundHigh
        case "Course à pied": return .runningEventBackgroundHigh
        case "Boxe", "Arts Martiaux": return .boxingEventBackgroundHigh
        case "Natation": return .blue
        case "Yoga": return .purple
        case "Basketball": return .orange
        case "Tennis": return .yellow
        case "Cyclisme": return .cyan
        case "Rugby": return .brown
        case "Musculation", "Crossfit": return .gray
        case "Handball": return .teal
        case "Volleyball": return .mint
        case "Pilates": return .pink
        default: return .gray
        }
    }
    
    var body: some View {
        ZStack (alignment: .topLeading){
            
            
            
            RoundedRectangle(cornerRadius: 20)
//                .fill(topGradientColor.opacity(0.08))
                .foregroundStyle(topGradientColor.opacity(0.2))
                .frame(/*maxWidth: 350, */maxHeight: 250)
            
            
            
            
            RoundedRectangle(cornerRadius: 20)
                .fill(LinearGradient(
                    gradient: Gradient(colors: [topGradientColor, .clear]),
                        startPoint: .top,
                        endPoint: .bottom
                    )
                    
                )
//                .stroke(Color.yellowTextButton, lineWidth: 4)
                .frame(/*maxWidth: 350, */maxHeight: 250)
        
                
               
            
            VStack(alignment: .leading, spacing: 8) {
                Text(categoriesEvents.type)
                    .fontWidth(.expanded)
                    .fontWeight(.black)
                    .font(.system(size: 24))
                    .foregroundColor(.white)
//                    .shadow(color: .black, radius: 4, x: 4, y: 4)
                    .padding(.leading)
                    .padding(.top)
                    .padding(.bottom)
                
                Button {
                    showSheet.toggle()
                } label: {
                    ZStack(alignment: .leading){
                        RoundedRectangle(cornerRadius: 16)
                            .frame( maxHeight: 54)
                        //                                .padding(.leading, 36)
                            .opacity(0.9)
//                            .overlay {
//                                RoundedRectangle(cornerRadius: 34)
//                                    .stroke(lineWidth: 2)
//                                    .foregroundStyle(.yellowTextButton)
//                            }
                            .overlay {
                                Image(systemName: "chevron.right")
                                    .frame(maxWidth: .infinity, alignment: .trailing)
                                    .foregroundStyle(.white)
                                    .padding(.trailing)
                            }
                        
                        HStack{
                            Image(eventPastille.image)
                                .resizable()
                                .frame(maxWidth: 54, maxHeight: 54)
                                .clipShape(RoundedRectangle(cornerRadius: 16))
                                .padding(.trailing, 8)
                            
                            VStack (alignment: .leading){
                                
                                Text(eventPastille.city)
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                                    .lineLimit(1)
                                Text(eventPastille.localisation)
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                                    .lineLimit(1)
                                
                            }
                            
                        }
                        
                        //                            .padding(.trailing)
                        //                            .background(RoundedRectangle(cornerRadius: 34)
                        //                                .foregroundStyle(.black)
                        //                            )
                    }
                    
                } .padding(.bottom)
                   
                
                .sheet(isPresented: $showSheet) {
                    EventDetailView(eventInfoGrab: eventPastille, profileImageGrab: profils[0], eventDifficulty: eventLevels[0])
                        .presentationDragIndicator(.visible)
                    
                }
                .foregroundStyle(.forGradientBlack.opacity(0.80))
                .padding(.horizontal, 22)
                
                
                Button {
                    showSheetSsecond.toggle()
                } label: {
                    
                    ZStack(alignment: .leading){
                        RoundedRectangle(cornerRadius: 16)
                            .frame(maxHeight: 54)
                            .opacity(0.9)
                            .overlay {
                                Image(systemName: "chevron.right")
                                    .frame(maxWidth: .infinity, alignment: .trailing)
                                    .foregroundStyle(.white)
                                    .padding(.trailing)
                            }
                        HStack {
                            Image(secondEventPastille.image)
                                .resizable()
                                .frame(maxWidth: 54, maxHeight: 54)
                                .clipShape(RoundedRectangle(cornerRadius: 16))
                                .padding(.trailing, 8)
                            VStack (alignment: .leading){
                                Text(secondEventPastille.city)
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                                Text(secondEventPastille.localisation)
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                                
                            }
                            
                            
                        }
                        
                    }
                    .padding(.bottom,28)
                }
                
                .foregroundStyle(.forGradientBlack.opacity(0.80))
                .sheet(isPresented: $showSheetSsecond) {
                    EventDetailView(eventInfoGrab: secondEventPastille, profileImageGrab: profils[0], eventDifficulty: eventLevels[1])
                        .presentationDragIndicator(.visible)
                }
                
                
                
                
                
                
                .padding(.horizontal, 22)
                //                    .padding(.trailing)
                //                    .background(RoundedRectangle(cornerRadius: 34)
                //                        .foregroundStyle(.black))
            }
        }
    }
}




#Preview {
    CategoriesCalledViews(categoriesEvents: sportTypes[0], eventPastille: events[0], secondEventPastille: events[1])
}


