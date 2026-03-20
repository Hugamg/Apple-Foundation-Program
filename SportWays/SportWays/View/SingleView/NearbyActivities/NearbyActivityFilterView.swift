//
//  NearbyActivityFilterView.swift
//  SportWays
//
//  Created by Adam on 2026-03-17.
//

import SwiftUI

struct NearbyActivityFilterView: View {
    var cities = ["Paris", "Lyon", "Bordeaux", "Lille", "All"]
    @State var currentCity = "Lyon"

    var body: some View {
        VStack {
            Picker("Choose a city", selection: $currentCity) {
                ForEach(cities, id: \.self) {
                    Text($0)
                }
            }
            if currentCity != ""{
                Text("You selected: \(currentCity)").font(.body).fontWeight(.medium).foregroundStyle(.fontPrincipal)
            } else {
                Text("Select a city").font(.body).fontWeight(.medium).foregroundStyle(.fontPrincipal)
            }
        }.globalPageStyle()
    }
}



#Preview {
    NearbyActivityFilterView()
}
