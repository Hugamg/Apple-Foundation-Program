//
//  FruitModel.swift
//  Exercices
//
//  Created by apprenant100 on 11/03/2026.
//

import SwiftUI

struct Fruit: Identifiable {
    let id = UUID()
    let image: ImageResource
    let titleFruit: String
    let text: String
    let color : Color
}


var fruits: [Fruit] = [
    Fruit(image: .fruits8 , titleFruit: "Abricot", text: "Fruit charnu, une drupe, de forme arrondie, possédant un noyau dur contenant une seule graine appelée amande.", color:.orange),
    
    Fruit(image: .fruits2 , titleFruit: "Banana", text: "Baie oblongue, fruit disposé en régime, de couleur verte puis jaune, à peau jaune et à pulpe comestible, farineuse et sucrée.", color:.yellow),
    
    Fruit(image: .fruits7 , titleFruit: "Cassis", text: "Baie noire poussant en grappes, au goût acidulé, très riche en vitamine C.", color:.purple),
    
    Fruit(image: .fruits12, titleFruit: "Fraise", text: "Baie rouge reconnaissable grâce à sa peau rouge et aux petits grains beiges, les akènes.", color:.red),
    
    Fruit(image: .fruits6, titleFruit: "Melon", text: "Le melon est une espèce de plantes herbacées annuelles, originaire d'Afrique intertropicale, appartenant à la famille des Cucurbitacées.", color:.green),
    
    Fruit(image: .fruits11, titleFruit: "Pomme", text: "Fruit charnu, de forme quasi sphérique, déprimée au sommet et à la base, à pulpe homogène.", color:.yellow),
    
]

