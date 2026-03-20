//
//  SportTypeModel.swift
//  SPORTSWay's
//
//  Created by apprenant100 on 12/03/2026.
//

import SwiftUI

struct SportTypeModel: Identifiable {
    let id = UUID()
    let type: String
}

var sportTypes = [
    
    // MARK: - Sports 🏅
    SportTypeModel(type: "Course à pied"),
    SportTypeModel(type: "Boxe"),
    SportTypeModel(type: "Football"),
    SportTypeModel(type: "Musculation"),
    SportTypeModel(type: "Natation"),
    SportTypeModel(type: "Yoga"),
    SportTypeModel(type: "Basketball"),
    SportTypeModel(type: "Tennis"),
    SportTypeModel(type: "Cyclisme"),
    SportTypeModel(type: "Rugby"),
    SportTypeModel(type: "Arts Martiaux"),
    SportTypeModel(type: "Handball"),
    SportTypeModel(type: "Volleyball"),
    SportTypeModel(type: "Crossfit"),
    SportTypeModel(type: "Pilates")
]
