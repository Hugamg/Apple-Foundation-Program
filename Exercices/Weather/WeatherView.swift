//
//  WeatherView.swift
//  Exercices
//
//  Created by apprenant100 on 11/03/2026.
//

import SwiftUI

struct WeatherView: View {
    
    @State var weatherData: Weather
    var body: some View {
            HStack{
                Image(systemName: weatherData.icon)
                    .font(.largeTitle)
                
                Text(weatherData.weather)
                
                
            }
            .ignoresSafeArea()
            .frame(maxWidth:.infinity, maxHeight: .infinity)
    }
}

#Preview {
    WeatherView(weatherData: weathers[0])
}
