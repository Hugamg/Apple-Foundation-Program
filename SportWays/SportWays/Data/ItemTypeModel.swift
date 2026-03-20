//
//  SportTypeModel.swift
//  SPORTSWay's
//
//  Created by apprenant100 on 12/03/2026.
//

import SwiftUI

struct ItemTypeModel: Identifiable {
    let id = UUID()
    let type: String
}

var itemTypes = [
    
    // MARK: - item categories
    ItemTypeModel(type: "Vélo"),
    ItemTypeModel(type: "Animal de compagnie"),
    ItemTypeModel(type: "Chapeau"),
    ItemTypeModel(type: "Chaussure"),
    ItemTypeModel(type: "Ballon"),
].sorted { type1, type2  in
    type1.type < type2.type
}

