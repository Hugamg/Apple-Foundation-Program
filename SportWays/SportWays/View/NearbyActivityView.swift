//  NearbyActivitieView.swift
//  SPORTSWay's
//  Created by apprenant100 on 13/03/2026.
import SwiftUI

struct NearbyActivityView: View {
    
    //@State currentSport:String = "get from button"
    @State var currentSport: String = ""
    @State var currentCity = "Lyon"
    @State var dotColor:Color = .clear
    @State private var showPicker = false
    var isShowingInformations: Bool = true
    
    
    var cities: [String] {
        ["Toutes les villes"] + Array(Set(events.map { $0.city })).sorted()
    }
    
    // MARK: filter events by city and sport
    var selectedEvents: [EventModel] {
        // if city is not set and sport is set (eg All cities, Boxe) :: filter on sport only
        if currentCity == "Toutes les villes" && currentSport != "" {
            let filtered = events.filter { event in event.sportType.type  == currentSport }
            return filtered
        }
        // if city is not set and sport is not (All cities, no selected sport) : no filtering
        else if currentCity == "Toutes les villes" && currentSport == "" {
            let filtered = events
            return filtered
        }
        // if city is set but sport is not (Lyon, Boxe) :: filter on city and sport
        else if currentCity != "Toutes les villes" && currentSport != "" {
            let filtered = events.filter { event in event.sportType.type  == currentSport && event.city == currentCity}
            return filtered
        }
        // final case where city is specified and sport is not
        else {
            let filtered = events.filter { event in event.city == currentCity}
            return filtered
            
        }
        
    }
    // option 1 to return all events when no matches
    //        return filtered.isEmpty ? events : filtered
    // option 2 to return empty when no matches
    
    //var cities = ["All cities", "Paris", "Lyon", "Bordeaux", "Lille"]
    
    
    
    var body: some View {
        
        NavigationStack {
            ZStack {
                VStack {
                    
                    Rectangle()
                        .frame(maxWidth: .infinity)
                        .frame(height:1)
                        .foregroundStyle(.yellowTextButton)
                    Divider()
                        .padding(.bottom)
                    
                    // MARK : scroll view of sports at top of screen
                    if isShowingInformations{
                        ScrollView(.horizontal){
                            HStack{
                                ForEach(sportTypes) { sportType in
                                    Button {
                                        if currentSport != sportType.type {
                                            currentSport = sportType.type
                                        } else {
                                            currentSport = ""
                                        }
                                    } label: {
                                        VStack{
                                            HStack{
                                                Text(sportType.type)
                                                    .font(.default).foregroundStyle(
                                                        currentSport == sportType.type ? .yellowTextButton : .fontPrincipal )
                                                    .fontWeight(.black)
                                                    .fontWidth(.expanded)
                                                Rectangle() // this is the separator
                                                    .frame(width: 1,height:20).foregroundStyle(.yellowTextButton)
                                            }
                                            Image(systemName: "circle.fill").foregroundStyle(
                                                //ternaire to yield color
                                                currentSport == sportType.type ? .yellowTextButton : .clear
                                            ).font(.system(size: 5))
                                        }
                                    }
                                }
                            }
                        }
                        .scrollIndicators(.never)
                        .padding(.bottom,30)
                    }
                    // scroll view if there are events
                    if selectedEvents.count == 0
                    {
                        VStack{
                            Spacer()
                            Text("Pas de résultat !").font(.system(size:30))
                                .fontWeight(.black)
                                .fontWidth(.expanded)
                                .foregroundStyle(.yellowTextButton)
                                .padding(.bottom, 4)
                            Text("Revenez plus tard ").font(.system(size:20))
                                .fontWeight(.bold)
                                .foregroundStyle(.yellowTextButton)
                                .padding(.bottom, 30)
                            Divider()
                            Button("Enlever les filtres") { }
                                .foregroundStyle(.black141414)
                                .padding(.horizontal)
                                .padding(.vertical, 4)
                                .glassEffect(.clear.tint(.yellowTextButton))
                                .font(.title3)
                                .fontWidth(.expanded)
                                .fontWeight(.semibold)
                            
                            Spacer()}
                    }
                    else
                    {
                        if isShowingInformations{
                            NavigationStack{
                                
                                ScrollView {
                                    ForEach(
                                        // MARK: nneed to add button-here for view//
                                        selectedEvents) { item in
                                            NavigationLink{
                                                // call event detail view
                                                EventDetailView(
                                                    eventInfoGrab: item,
                                                    profileImageGrab: profils[0],
                                                    eventDifficulty: eventLevels[0]
                                                )
                                                
                                            } label: {
                                                VStack{
                                                    SingleEventView(singleEvent: item, isShowingInformations: true)
                                                    Divider()
                                                        .overlay(.yellowTextButton)
                                                        .frame(height: 50)
                                                }
                                                .scrollIndicators(.hidden)
                                            }
                                        }
                                    // end scroll view of events
                                    
                                }
                            }
                        } else {
                            NavigationStack{
                                
                                ScrollView {
                                    ForEach(
                                        // MARK: nneed to add button-here for view//
                                        selectedEvents) { item in
                                            NavigationLink{
                                                // call event detail view
                                                EventDetailView(
                                                    eventInfoGrab: item,
                                                    profileImageGrab: profils[0],
                                                    eventDifficulty: eventLevels[0]
                                                )
                                                
                                            } label: {
                                                VStack{
                                                    SingleEventView(singleEvent: item, isShowingInformations: true)
                                                    Divider()
                                                        .overlay(.yellowTextButton)
                                                        .frame(height: 50)
                                                }
                                                .scrollIndicators(.hidden)
                                            }
                                        }
                                    // end scroll view of events
                                    
                                }
                            }
                            
                        }
                    }
                }
                .globalPageStyle()
                .navigationTitle("nbwrevbiowrb") // don't touch :: code de F-X
                .navigationBarTitleDisplayMode(.inline) // don't touch :: code de F-X
                // MARK : toolbar
                .toolbar {
                    //                    ToolbarItem(placement: .topBarLeading) {
                    //                        Button{
                    //                            //
                    //                        } label: {
                    //
                    //                            Image(.sportswayslogo)
                    //                                .resizable()
                    //                                .aspectRatio(contentMode: .fill)
                    //                                .frame(width: 30, height: 30)
                    //
                    //                        }.buttonStyle(.plain)
                    //                    }
                    
                    if isShowingInformations{
                        ToolbarItem(placement: .principal) {
                            Text(currentCity)
                                .font(.title3)
                                .foregroundStyle(.fontPrincipal)
                                .fontWeight(.black)
                                .fontWidth(.expanded)
                                .opacity(1)
                        }
                        ToolbarItem(placement: .topBarTrailing) {
                            Menu {
                                // create a button for each city
                                ForEach(cities, id: \.self) { city in
                                    Button(city) {
                                        currentCity = city
                                    }
                                }
                            } label: {
                                // the button that shows in the toolbar
                                HStack {
                                    Image(systemName: "slider.horizontal.3")
                                    //                                                Text(currentCity)
                                }
                            }
                        }
                    }
                }
            }
        }                        }
    
}

#Preview {
    NearbyActivityView(isShowingInformations: true)
    
}
