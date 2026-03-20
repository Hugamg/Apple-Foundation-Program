//
//  EventLevelModel.swift
//  SPORTSWay's
//
//  Created by apprenant100 on 12/03/2026.
//

import SwiftUI

struct EventLevelModel: Identifiable {
    let id = UUID()
    let label: String
}

var eventLevels = [
    
    // MARK: - Niveaux 🎯
    EventLevelModel(label: "Débutant"),
    EventLevelModel(label: "Intermédiaire"),
    EventLevelModel(label: "Avancé"),
    EventLevelModel(label: "Expert"),
    EventLevelModel(label: "Tous niveaux")
]
