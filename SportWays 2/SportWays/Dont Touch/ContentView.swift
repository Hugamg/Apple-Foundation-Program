//
//  ContentView.swift
//  SPORTSWay's
//
//  Created by apprenant100 on 13/03/2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
                TabView {
                    Tab("Home", systemImage: "house") {
                        HomeView()
                    }
                    Tab("Activités proches", systemImage: "figure.walk.motion") {
                        NearbyActivityView()
                        
                    }
                    Tab("Shop", systemImage: "bag") {
                        ShopView()
                        
                    }
                    
                    Tab("Profil", systemImage: "person") {
                        ProfileView()
                    }
                }
        
    }
}

#Preview {
    ContentView()
}
