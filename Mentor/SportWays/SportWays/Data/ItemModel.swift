//
//  ShopArticleData.swift
//  SPORTSWay's
//
//  Created by apprenant100 on 12/03/2026.
//
import SwiftUI

struct ItemModel: Identifiable {
    let id = UUID()
    let image: ImageResource
    let title: String
    let label: String
    let point: Int
    let description: String
}

var items = [
    
    // MARK: - Animaux de compagnie 🐾
    ItemModel(
        image: .cat,
        title: "Chat Classique",
        label: "Animal de compagnie",
        point: 500,
        description: "Un petit chat mignon pour accompagner tes aventures sportives !"
    ),
    ItemModel(
        image: .ghost,
        title: "Fantôme",
        label: "Animal de compagnie",
        point: 300,
        description: "Un fantôme discret qui hante tes séances d'entraînement."
    ),
    ItemModel(
        image: .pickachu,
        title: "Pikachu",
        label: "Animal de compagnie",
        point: 1000,
        description: "Le Pokémon électrique pour booster ton énergie !"
    ),
    ItemModel(
        image: .oiiaOiiaCat,
        title: "Oiia Oiia Cat",
        label: "Animal de compagnie",
        point: 1500,
        description: "Le chat viral, aussi endurant que toi !"
    ),
    
    // MARK: - Chapeaux 🎩
    ItemModel(
        image: .hatImageBlue,
        title: "Casquette Sport",
        label: "Chapeau",
        point: 400,
        description: "Une casquette stylée pour affronter le soleil pendant tes runs !"
    ),
    ItemModel(
        image: .hatImageBrim,
        title: "Bonnet d'Hiver",
        label: "Chapeau",
        point: 350,
        description: "Reste au chaud lors de tes séances en extérieur par grand froid."
    ),
    ItemModel(
        image: .hatImageCowboy,
        title: "Chapeau Cowboy",
        label: "Chapeau",
        point: 800,
        description: "Pour les sportifs qui veulent se démarquer avec style !"
    ),
    
    // MARK: - Chaussures 👟
    ItemModel(
        image: .shoesRunningPair1,
        title: "Air Runner",
        label: "Chaussures",
        point: 1200,
        description: "Des sneakers ultra légères pour optimiser tes performances en course."
    ),
    ItemModel(
        image: .shoeOutline,
        title: "Basket Pro",
        label: "Chaussures",
        point: 1000,
        description: "Les chaussures parfaites pour dominer le terrain de basketball."
    ),
    ItemModel(
        image: .shoeRunning,
        title: "Crampons Elite",
        label: "Chaussures",
        point: 900,
        description: "Des crampons haute performance pour t'imposer sur le terrain."
    ),
    
    // MARK: - Vélos 🚴
    ItemModel(
        image: .cyclingBikeYellow,
        title: "VTT Extreme",
        label: "Bike",
        point: 2000,
        description: "Un VTT robuste pour dévaler les sentiers les plus techniques !"
    )
    
    /*
     // MARK: - Sacs 🎒
    ItemModel(
        image: ,
        title: "Sac de Gym",
        label: "Sac",
        point: 600,
        description: "Le sac indispensable pour transporter tout ton équipement sportif."
    ),
    ItemModel(
        image: .bagBackpack,
        title: "Sac à Dos Trail",
        label: "Sac",
        point: 800,
        description: "Léger et ergonomique, parfait pour les sorties trail longue distance."
    ),
    ItemModel(
        image: .bagLuxury,
        title: "Sac Premium",
        label: "Sac",
        point: 1800,
        description: "Un sac haut de gamme pour le sportif qui ne fait aucun compromis sur le style."
    )*/
]
