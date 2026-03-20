//  NearbyActivitieView.swift
//  SPORTSWay's
//
//  Created by apprenant100 on 13/03/2026.
//
// MARK : Modified by Adam
import SwiftUI


struct SingleEventView: View {
    let singleEvent:EventModel

    // make string of number of enrolled participants, slash and max number of participants
    func getAvailablePlacesOverlayText(singleEvent:EventModel) -> (String) {
        
        let availShort:String = "\(singleEvent.numbersOfPersonCurrent)/\(singleEvent.numbersOfPersonMax)"
        return availShort
    }
    
    func trophyHStack(for eventLevel: String) -> (some View) {
        let trophyColor:Color = .green
        switch eventLevel {
        case "Débutant", "Beginner":
            return HStack(spacing: 2) {
                Image(systemName: "trophy.fill").foregroundStyle(trophyColor)
                Image(systemName: "trophy").foregroundStyle(trophyColor)
                Image(systemName: "trophy").foregroundStyle(trophyColor)
                Image(systemName: "trophy").foregroundStyle(trophyColor)
            }
        case "Intermédiaire", "Intermediate":
            return HStack(spacing: 2) {
                Image(systemName: "trophy.fill").foregroundStyle(trophyColor)
                Image(systemName: "trophy.fill").foregroundStyle(trophyColor)
                Image(systemName: "trophy").foregroundStyle(trophyColor)
                Image(systemName: "trophy").foregroundStyle(trophyColor)
            }
        case "Avancé", "Advanced":
            return HStack(spacing: 2) {
                Image(systemName: "trophy.fill").foregroundStyle(trophyColor)
                Image(systemName: "trophy.fill").foregroundStyle(trophyColor)
                Image(systemName: "trophy.fill").foregroundStyle(trophyColor)
                Image(systemName: "trophy").foregroundStyle(trophyColor)
            }
        case "Expert":
            return HStack(spacing: 2) {
                Image(systemName: "trophy.fill").foregroundStyle(trophyColor)
                Image(systemName: "trophy.fill").foregroundStyle(trophyColor)
                Image(systemName: "trophy.fill").foregroundStyle(trophyColor)
                Image(systemName: "trophy.fill").foregroundStyle(trophyColor)
            }
        default:
            return HStack(spacing: 2) {
                Image(systemName: "trophy").foregroundStyle(trophyColor)
                Image(systemName: "trophy").foregroundStyle(trophyColor)
                Image(systemName: "trophy").foregroundStyle(trophyColor)
                Image(systemName: "trophy").foregroundStyle(trophyColor)
            }
        }
    }

    // use places remaining to get a color
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
    
    // get a string for the bubble displaying places left
    func getPlacesLeftString(singleEvent:EventModel ) -> (String ) {
        let eventCapacity: Int = singleEvent.numbersOfPersonMax
        let eventEnrolments: Int = singleEvent.numbersOfPersonCurrent
        let eventsDelta: Int = eventCapacity - eventEnrolments

        var PlacesLeftString: String
        if eventsDelta == 0 {
            PlacesLeftString = "Full !"
        }
        else  {
            PlacesLeftString = "\(eventsDelta) places left"
        }
        return PlacesLeftString
    }
    
    // set row height for the for-each
    var rowHeight: Double = 100
    var body: some View {

        HStack{
                ZStack(alignment: .bottomTrailing){
                    Image(singleEvent.image)
                        .resizable()
                        .scaledToFit()
//                        .frame(width: rowHeight, height: rowHeight)
                        HStack {
                        Circle()
                            .fill(getAvailabilityColor(singleEvent:singleEvent)).frame(width:12)
                        
                            Image(systemName: "person.fill").font(.body).foregroundStyle(.yellowTextButton)
                            Text(getAvailablePlacesOverlayText(singleEvent: singleEvent)).font(.body).foregroundStyle(.white)
                        }
                        .padding(.horizontal, 5)
                        .background(Capsule().fill(.black141414)
                        )
                }
                VStack(alignment:.leading){
                    Text(singleEvent.localisation)
                        .fontWeight(.bold)
                        .font(.title).foregroundStyle(.blue)
                    
                  trophyHStack(for: singleEvent.eventLevel.label )
                    HStack{
                        Text(singleEvent.timeStart).font(.body).foregroundStyle(.fontPrincipal)
                        Text(singleEvent.date).font(.body).foregroundStyle(.fontPrincipal)
                    }
                    Text(getPlacesLeftString(singleEvent:singleEvent)).font(.body).fontWeight(.bold)
                        .padding(.horizontal,5)
                        .padding(.vertical,2)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                  .fill(getAvailabilityColor(singleEvent:singleEvent)
                                       )
                                  .padding(0)
                        )
                }
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: rowHeight)
//                .background(.black)
                .padding()
    }
}
#Preview {
    SingleEventView(  singleEvent:events[4])
}


