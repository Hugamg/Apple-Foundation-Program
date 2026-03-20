//
//  WeatherSliderView.swift
//  Exercices
//
//  Created by apprenant100 on 10/03/2026.
//


import SwiftUI

struct WeatherCondition {
    var text: String
    var color: Color
}

struct WeatherSliderView: View {
    @State var celsius: Double = 25.0
    
    var condition : WeatherCondition {
        checkWeather(celsius)
    }
    
    var body: some View {
        ZStack{
            
            condition.color
                .ignoresSafeArea()
            
            VStack{
                Text("\(Int(celsius)) °C")
                    .font(.title)
                    .foregroundStyle(.white)
                
                Text(condition.text)
                    .font(.largeTitle)
                
                Slider(value: $celsius, in: 0...50)
            }
        }
        
        .onChange(of: celsius) {
        }
    }
    
    private func checkWeather(_ celsius : Double) -> WeatherCondition {
        switch celsius {
            
        case 0...18:
            return WeatherCondition(text: "Ça caille 🥶", color: .blue)
        case 18...29:
            return WeatherCondition(text: "C'est Chill 😎", color : .orange)
        case 29...50:
            return WeatherCondition(text: "Je brûle 🥵", color: .red)
        
        default:
            return WeatherCondition(text: "Ça caille 🥶", color: .blue)
        }
    }
}

#Preview {
    WeatherSliderView()
}
