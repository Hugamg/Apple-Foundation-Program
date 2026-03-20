//
//  WeatherModel.swift
//  Exercices
//
//  Created by apprenant100 on 11/03/2026.
//

import Foundation

struct Weather: Identifiable {
    let id = UUID()
    let icon: String
    let weather : String
}


var weathers: [Weather] = [
    Weather(icon: "sun.max.fill", weather: "Sun"),
    Weather(icon: "cloud.fill", weather: "Cloud"),
    Weather(icon: "cloud.bolt.fill", weather: "Storm"),
    Weather(icon: "moon.fill", weather: "Moon"),
    Weather(icon: "snowflake", weather: "Snow"),
    Weather(icon: "tornado", weather: "Tornado")
]
