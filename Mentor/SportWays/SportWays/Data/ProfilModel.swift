//
//  ProfilData.swift
//  SPORTSWay's
//
//  Created by apprenant100 on 12/03/2026.
//

import SwiftUI

struct ProfilModel: Identifiable {
    let id = UUID()
    var imageProfil: ImageResource
    let name: String
    let surname: String
    var adress: String
    var age: Int
    var follower: Int
    let mail: String
    var mdp: String
    var pseudo: String
    var bio: String
    var badge: [BadgeModel]
    var challenge: [EventModel]
    var item: [ItemModel]
    var sportType: [SportTypeModel]
    //var program: [ProgramModel]
}

var profils = [
    
    // MARK: - Profil 1 - Lucas 🏃
    ProfilModel(
        imageProfil: .amanda1,
        name: "Martin",
        surname: "Lucas",
        adress: "69003 Lyon",
        age: 24,
        follower: 364,
        mail: "lucas.martin@gmail.com",
        mdp: "Lucas2024!",
        pseudo: "LucasRun",
        bio: """
            🏋️ Sportif passionné
            🔥 Toujours prêt 
            """,
        badge: [
            badges[0],
            badges[1],
            badges[2],
            badges[3]
        ],
        challenge: [
            events[0],
            events[2]
        ],
        item: [
            items[0],
            items[1],
            items[2],
            items[2],
            items[2],
            items[2],
            items[2]
        ],
        sportType: [
            sportTypes[0],
            sportTypes[1],
            sportTypes[3]
        ]
        /* program: [
            ProgramModel(
                type: "Course à pied",
                exercice: [
                    ExerciceModel(image: .run5km, title: "5km Plyométrique", type: SportTypeModel(type: "Course à pied"), breakTime: 60.0, reps: 1, set: 3),
                    ExerciceModel(image: .sprint100m, title: "Sprint 100m", type: SportTypeModel(type: "Course à pied"), breakTime: 90.0, reps: 10, set: 4)
                ]
            )
        ]*/
    ),
    
    // MARK: - Profil 2 - Sofia 🥊
    ProfilModel(
        imageProfil: .sohaib1,
        name: "Dupont",
        surname: "Sofia",
        adress: "69006 Lyon",
        age: 28,
        follower: 1056,
        mail: "sofia.dupont@gmail.com",
        mdp: "Sofia2024!",
        pseudo: "SofiaBoxe",
        bio: "Boxeuse amateur depuis 5 ans. La boxe c'est ma thérapie 🥊💪",
        badge: [
            badges[2],
            badges[3]
        ],
        challenge: [
            events[2],
            events[3]
        ],
        item: [
            items[2],
            items[3]
        ],
        sportType: [
            sportTypes[2],
            sportTypes[3],
        ]
        /* program: [
            ProgramModel(
                type: "Boxe",
                exercice: [
                    ExerciceModel(image: .boxeJab, title: "Enchaînement Jab-Cross", type: SportTypeModel(type: "Boxe"), breakTime: 60.0, reps: 20, set: 4),
                    ExerciceModel(image: .boxeSackWork, title: "Travail au Sac", type: SportTypeModel(type: "Boxe"), breakTime: 90.0, reps: 3, set: 5)
                ]
            
            )
        ] */
    ),
    
    // MARK: - Profil 3 - Thomas ⚽
    ProfilModel(
        imageProfil: .françoisXavier1,
        name: "Bernard",
        surname: "Thomas",
        adress: "69008 Lyon",
        age: 19,
        follower: 210,
        mail: "thomas.bernard@gmail.com",
        mdp: "Thomas2024!",
        pseudo: "ThomasFoot",
        bio: "Footballeur en club depuis l'âge de 6 ans. Le foot c'est toute ma vie ⚽🔥",
        badge: [
            badges[4],
            badges[5]
        ],
        challenge: [
            events[4],
            events[5]
        ],
        item: [
            items[4],
            items[5]
        ],
        sportType: [
            sportTypes[4],
            sportTypes[5]
        ]
        /* program: [
            ProgramModel(
                type: "Football",
                exercice: [
                    ExerciceModel(image: .footballDribble, title: "Slalom Dribbles", type: SportTypeModel(type: "Football"), breakTime: 45.0, reps: 10, set: 4),
                    ExerciceModel(image: .footballShoot, title: "Tirs au But", type: SportTypeModel(type: "Football"), breakTime: 30.0, reps: 15, set: 3)
                ]
            )
        ]*/
    ),
    
    // MARK: - Profil 4 - Emma 🏊
    ProfilModel(
        imageProfil: .frenkie1,
        name: "Leroy",
        surname: "Emma",
        adress: "69001 Lyon",
        age: 22,
        follower: 567,
        mail: "emma.leroy@gmail.com",
        mdp: "Emma2024!",
        pseudo: "EmmaSwim",
        bio: "Nageuse compétitive depuis 10 ans. L'eau c'est mon terrain de jeu 🏊‍♀️",
        badge: [
            badges[6],
            badges[7]
        ],
        challenge: [
            events[6],
            events[7]
        ],
        item: [
            items[6],
            items[7]
        ],
        sportType: [
            sportTypes[6],
            sportTypes[7]
        ]
        /*program: [
            ProgramModel(
                type: "Natation",
                exercice: [
                    ExerciceModel(image: .swimCrawl, title: "Crawl Endurance", type: SportTypeModel(type: "Natation"), breakTime: 45.0, reps: 4, set: 5),
                    ExerciceModel(image: .swimButterfly, title: "Papillon Intensif", type: SportTypeModel(type: "Natation"), breakTime: 90.0, reps: 2, set: 4)
                ]
            )
        ]*/
    )
]
