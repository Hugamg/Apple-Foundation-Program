//
//  BadgeData.swift
//  SPORTSWay's
//
//  Created by apprenant100 on 12/03/2026.
//

import SwiftUI

struct BadgeModel: Identifiable {
    let id = UUID()
    let icon: ImageResource
    let title: String
    let sportType: SportTypeModel
    let description: String
}

var badges = [
    
    // MARK: - Débutant 🌱
    BadgeModel(
        icon: .badge,
        title: "Premier Pas",
        sportType: SportTypeModel(type: "Général"),
        description: "Tu as complété ton premier exercice. Le voyage commence ici !"
    ),
    BadgeModel(
        icon: .trophy,
        title: "En Route",
        sportType: SportTypeModel(type: "Général"),
        description: "5 exercices complétés. Tu prends de bonnes habitudes !"
    ),
    BadgeModel(
        icon: .soccerCup,
        title: "Persévérant",
        sportType: SportTypeModel(type: "Général"),
        description: "10 exercices complétés. Ta régularité commence à payer !"
    ),
    
    // MARK: - Intermédiaire 🔥
    BadgeModel(
        icon: .trophy3,
        title: "Guerrier du Sport",
        sportType: SportTypeModel(type: "Général"),
        description: "25 exercices complétés. Tu es sur la bonne voie !"
    ),
    BadgeModel(
        icon: .trophy2,
        title: "Sans Relâche",
        sportType: SportTypeModel(type: "Général"),
        description: "7 jours consécutifs d'entraînement. La constance est ta force !"
    ),
    BadgeModel(
        icon: .waterBottle,
        title: "Brûleur de Calories",
        sportType: SportTypeModel(type: "Général"),
        description: "5000 calories brûlées au total. Ton corps te remercie !"
    ),
    
    // MARK: - Avancé ⚡
    BadgeModel(
        icon: .ballTennis,
        title: "Machine de Guerre",
        sportType: SportTypeModel(type: "Général"),
        description: "50 exercices complétés. Tu es une vraie machine !"
    ),
    BadgeModel(
        icon: .stopwatch,
        title: "Indestructible",
        sportType: SportTypeModel(type: "Général"),
        description: "30 jours consécutifs d'entraînement. Rien ne peut t'arrêter !"
    ),
    BadgeModel(
        icon: .award,
        title: "Maître du Cardio",
        sportType: SportTypeModel(type: "Général"),
        description: "100km parcourus au total. Tes jambes sont en acier !"
    ),
    
    // MARK: - Expert 👑
    BadgeModel(
        icon: .tactics,
        title: "Légende Vivante",
        sportType: SportTypeModel(type: "Général"),
        description: "100 exercices complétés. Tu es une inspiration pour tous !"
    ),
    BadgeModel(
        icon: .tickets,
        title: "Champion",
        sportType: SportTypeModel(type: "Général"),
        description: "60 jours consécutifs d'entraînement. Tu es au sommet !"
    ),
    BadgeModel(
        icon: .ballBasketball,
        title: "Élite",
        sportType: SportTypeModel(type: "Général"),
        description: "Tous les types de sport maîtrisés. Tu es un athlète complet !"
    )

]

