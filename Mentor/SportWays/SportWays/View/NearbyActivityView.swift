// MARK : Modified by Adam, ;; à venir, une fonction qui prendra un tuple, qui sera utilisé pour imprimer le bon string de SFSymbols

//  NearbyActivitieView.swift
//  SPORTSWay's
//
//  Created by apprenant100 on 13/03/2026.
//

import SwiftUI

struct NearbyActivityView: View {
    var body: some View {
//        ZStack{
        ScrollView{
            //NavigationStack {
                VStack {
                    ForEach(events){ eventModel in
                        NavigationLink {
                            EventDetailView(eventInfoGrab: eventModel)
                        } label:{
                            
                            VStack{
                                SingleEventView(singleEvent:eventModel)
                                
                            }
                            .padding(10)
                            
                        }
                        
                    }
                    //            }
                    .navigationTitle("PlaceName")
                }
                .globalPageStyle()
            }
        //}
    }
}
#Preview {
    NearbyActivityView(  )
    
}

