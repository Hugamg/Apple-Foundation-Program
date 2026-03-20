//
//  WeatherNavigationView.swift
//  Exercices
//
//  Created by apprenant100 on 11/03/2026.
//

import SwiftUI

struct WeatherNavigationView: View {
    var body: some View {
        NavigationStack{
            List(weathers){ weather in
                NavigationLink {
                    WeatherView(weatherData: weather)
                } label: {
                    VStack{
                        HStack{
                            Image(systemName: weather.icon)
                                .font(.largeTitle)
                            Text(weather.weather)
                                .font(.title)

                            
                            
                        }
                        .padding(.vertical)
                    }
                }
            }
            .navigationTitle("Weather")
        }
        
    }
}

#Preview {
    WeatherNavigationView()
}
