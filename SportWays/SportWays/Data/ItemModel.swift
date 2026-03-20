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
        label: "Chaussure",
        point: 1200,
        description: "Des sneakers ultra légères pour optimiser tes performances en course."
    ),
    ItemModel(
        image: .shoesRunningPair2,
        title: "Basket Pro",
        label: "Chaussure",
        point: 1000,
        description: "Les chaussures parfaites pour dominer le terrain de basketball."
    ),
    ItemModel(
        image: .shoeRunning,
        title: "Crampons Elite",
        label: "Chaussure",
        point: 900,
        description: "Des crampons haute performance pour t'imposer sur le terrain."
    ),
    
    // MARK: - Vélos 🚴
    ItemModel(
        image: .cyclingRoadCentreline,
        title: "Vélo contre-la-montre",
        label: "Vélo",
        point: 2000,
        description: "Un vélo de course pour les épreuves de contre-la-montre !"
    )
    
    ,
     // MARK: - Ballons 🎒
    ItemModel(
        image: .ballBasketball,
        title: "Ballon de basket",
        label: "Ballon",
        point: 600,
        description: "Beaucoup de rebond, beaucoup d'orange…"
    ),
    ItemModel(
        image: .ballTennis,
        title: "Balle de tennis",
        label: "Ballon",
        point: 800,
        description: "Léger et ergonomique, "
    ),
    ItemModel(
        image: .soccerball,
        title: "Ballon de foot",
        label: "Ballon",
        point: 1800,
        description: "Ballon pour les fans de foot, et de géométrie solide avec pentagones et hexagones"
    )
]
