import SwiftUI


/* variable categoriesEvents pour recuperer le string du type d'event et une variable pour utiliser ces strings, en faire un switch et modifier les couleurs pour chaque type de sport
 
 Ne pas oublier que j'ai touché aux couleurs dans les assets
 */

struct CategoriesCalledViews: View {
    
    var categoriesEvents: SportTypeModel
    var eventPastille: EventModel
    var secondEventPastille: EventModel
    
    @State var showSheet: Bool = false
    
    
    var topGradientColor: Color {
        switch categoriesEvents.type {
        case "Football": return .footballEventBackgroundHigh
        case "Course à pied": return .runningEventBackgroundHigh
        case "Boxe", "Arts Martiaux": return .red
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
            RoundedRectangle(cornerRadius: 24)
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [topGradientColor, .black.opacity(0.95)]),
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .frame(/*maxWidth: 350, */maxHeight: 250)
            
            VStack(alignment: .leading, spacing: 28) {
                Text(categoriesEvents.type)
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
                    .shadow(color: .black, radius: 4, x: 4, y: 4)
                    .padding(.leading)
                    .padding(.top)
                
                Button {
                    showSheet.toggle()
                } label: {
                    ZStack(alignment: .leading){
                        RoundedRectangle(cornerRadius: 34)
                            .frame( maxHeight: 54)
                        //                                .padding(.leading, 36)
                            .opacity(0.9)
                        HStack{
                            Image(eventPastille.image)
                                .resizable()
                                .frame(maxWidth: 54, maxHeight: 54)
                                .clipShape(Circle())
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
                    
                }
                .sheet(isPresented: $showSheet, content: {
                  
                })
                .padding(.horizontal, 44)
                
                
                ZStack(alignment: .leading){
                    RoundedRectangle(cornerRadius: 34)
                        .frame(maxHeight: 54)
                        .opacity(0.9)
                    HStack {
                        Image(secondEventPastille.image)
                            .resizable()
                            .frame(maxWidth: 54, maxHeight: 54)
                            .clipShape(Circle())
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
                .padding(.horizontal, 44)
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

