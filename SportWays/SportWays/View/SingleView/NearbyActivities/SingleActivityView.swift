import SwiftUI


// MARK:
struct SingleEventView: View {
    let singleEvent:EventModel
    @State var hasJoinedEvent: Bool = false
    let eventEnrolDict:[Bool:String] = [true:"Quitter",false:"Rejoindre"]
    let isShowingInformations: Bool

    
    // MARK: make string of number of participants, slash and max number of participants
    func getAvailablePlacesOverlayText(singleEvent:EventModel, hasJoinedEvent:Bool) -> (String) {
        let hasJoinedEvent:Bool = hasJoinedEvent
        let deltaV: Int = hasJoinedEvent ? 1  : 0
        let availShort:String = "\(singleEvent.numbersOfPersonCurrent + deltaV)/\(singleEvent.numbersOfPersonMax)"
        return availShort
    }

    func trophyHStack(for eventLevel: String) -> some View {
        let trophyColor: Color = .yellowTextButton
        
        let filledCount: Int = {
            switch eventLevel {
            case "Débutant", "Beginner": return 1
            case "Intermédiaire", "Intermediate": return 2
            case "Avancé", "Advanced": return 3
            case "Expert": return 4
            default: return 0
            }
        }()
        
        return HStack(spacing: 2) {
            Text("Niveau ")
                .foregroundStyle(.white)
                .fontWeight(.bold)
            
            ForEach(0..<4, id: \.self) { index in
                Image(systemName: index < filledCount ? "trophy.fill" : "trophy")
                    .foregroundStyle(trophyColor)
            }
        }
    }
    /* py
     icons = ["trophy.fill" if index < filledCount else "trophy" for index in range(4) ]*/
    // MARK: make an HStack of the word Niveau and the trophies
//    func trophyHStack(for eventLevel: String) -> (some View) {
//        let trophyColor:Color = .yellowTextButton
//        switch eventLevel {
//        case "Débutant", "Beginner":
//            return HStack(spacing: 2) {
//                Text("Niveau ").foregroundStyle(.white).fontWeight(.bold)
//                Image(systemName: "trophy.fill").foregroundStyle(trophyColor)
//                Image(systemName: "trophy").foregroundStyle(trophyColor)
//                Image(systemName: "trophy").foregroundStyle(trophyColor)
//                Image(systemName: "trophy").foregroundStyle(trophyColor)
//            }
//        case "Intermédiaire", "Intermediate":
//            return HStack(spacing: 2) {
//                Text("Niveau ").foregroundStyle(.white).fontWeight(.bold)
//                Image(systemName: "trophy.fill").foregroundStyle(trophyColor)
//                Image(systemName: "trophy.fill").foregroundStyle(trophyColor)
//                Image(systemName: "trophy").foregroundStyle(trophyColor)
//                Image(systemName: "trophy").foregroundStyle(trophyColor)
//            }
//        case "Avancé", "Advanced":
//            return HStack(spacing: 2) {
//                Text("Niveau ").foregroundStyle(.white).fontWeight(.bold)
//                Image(systemName: "trophy.fill").foregroundStyle(trophyColor)
//                Image(systemName: "trophy.fill").foregroundStyle(trophyColor)
//                Image(systemName: "trophy.fill").foregroundStyle(trophyColor)
//                Image(systemName: "trophy").foregroundStyle(trophyColor)
//            }
//        case "Expert":
//            return HStack(spacing: 2) {
//                Text("Niveau ").foregroundStyle(.white).fontWeight(.bold)
//                Image(systemName: "trophy.fill").foregroundStyle(trophyColor)
//                Image(systemName: "trophy.fill").foregroundStyle(trophyColor)
//                Image(systemName: "trophy.fill").foregroundStyle(trophyColor)
//                Image(systemName: "trophy.fill").foregroundStyle(trophyColor)
//            }
//        default:
//            return HStack(spacing: 2) {
//                Text("Niveau ").foregroundStyle(.white).fontWeight(.bold)
//                Image(systemName: "trophy").foregroundStyle(trophyColor)
//                Image(systemName: "trophy").foregroundStyle(trophyColor)
//                Image(systemName: "trophy").foregroundStyle(trophyColor)
//                Image(systemName: "trophy").foregroundStyle(trophyColor)
//            }
//        }
//    }

    // MARK: use available places remaining to get a color
    func getAvailabilityColor(singleEvent:EventModel ) -> (Color ) {
        let eventCapacity: Int = singleEvent.numbersOfPersonMax
        let eventEnrolments: Int = singleEvent.numbersOfPersonCurrent
        let eventsDelta: Int = eventCapacity - eventEnrolments
        var availableColor: Color
        if eventsDelta == 0 {
            availableColor = .statutComplet
        }
        else if eventsDelta < 5 {
            availableColor = .statutPartial
        }
        else   {
            availableColor = .statutFree
        }
        return availableColor
    }
    
//    // MARK: get a string for the bubble displaying places left
//    func getPlacesLeftString(singleEvent:EventModel ) -> (String ) {
//        let eventCapacity: Int = singleEvent.numbersOfPersonMax
//        let eventEnrolments: Int = singleEvent.numbersOfPersonCurrent
//        let eventsDelta: Int = eventCapacity - eventEnrolments
//
//        var PlacesLeftString: String
//        if eventsDelta == 0 {
//            PlacesLeftString = "Full !"
//        }
//        else if eventsDelta == 1 {
//            PlacesLeftString = "\(eventsDelta) place left"
//        }
//        else  {
//            PlacesLeftString = "\(eventsDelta) places left"
//        }
//        return PlacesLeftString
//    }
//
    // MARK: the body of the view
    var body: some View {
        ZStack{
            Color.black141414.ignoresSafeArea()// make background black with no borders >> these will be governed by globalStyle.
        HStack{
            
            // MARK: image with overlay on left of view
            ZStack(alignment: .bottomTrailing){
                Image(singleEvent.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 130)
                    .clipped()
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                if isShowingInformations{
                    HStack(spacing:0){
                        Image(systemName: "person.fill").font(.footnote).foregroundStyle(getAvailabilityColor(singleEvent:singleEvent))
                            .padding(.trailing, 4)
                        
                        Text(getAvailablePlacesOverlayText(singleEvent: singleEvent, hasJoinedEvent:hasJoinedEvent))
                            .font(.footnote)
                            .foregroundStyle(.white)
                            .fontWeight(.semibold)
                    }
                    .padding(.horizontal, 8)
                    .padding(.vertical, 3)
                    .background(Capsule().fill(.black141414)).padding(2)
                }
            }
            // MARK: List of information on right of screen
            VStack(alignment:.leading,spacing : 15){
                    Text(singleEvent.localisation)
                    .fontWidth(.expanded)
                        .fontWeight(.black)
                        .font(.default).foregroundStyle(.white)

            // MARK: get the HStack of trophies
            trophyHStack(for: singleEvent.eventLevel.label )
                if isShowingInformations{
                    HStack{
                        Text(Image(systemName: "clock"))
                            .foregroundStyle(.yellowTextButton)
                            .font(.system(size: 15))
                        Text(singleEvent.timeStart).font(.body).fontWeight(.bold).foregroundStyle(.fontPrincipal)
                            .padding(.trailing)
                        Text(Image(systemName: "calendar"))
                            .foregroundStyle(.yellowTextButton)
                            .font(.system(size: 15))
                        Text(singleEvent.date).font(.body).fontWeight(.bold).foregroundStyle(.fontPrincipal)
                            .padding(.trailing)
                    }
                }

                // MARK: display the distance + map pin
                HStack{
                    Text(Image(systemName: "mappin.and.ellipse"))
                        .foregroundStyle(.yellowTextButton)
                        .font(.system(size: 15))
                    Text(
                        "\(String(singleEvent.distanceToEvent)) km" ).font(.body).fontWeight(.bold).foregroundStyle(.fontPrincipal)
                        .padding(.trailing)

                }
            }.frame(maxWidth: .infinity, maxHeight: 130)
        }
         
    }
    }
}
#Preview {
    SingleEventView( singleEvent:events[1], isShowingInformations: true)
}
