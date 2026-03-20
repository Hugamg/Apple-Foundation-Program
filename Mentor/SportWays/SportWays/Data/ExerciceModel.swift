//
//  ExerciceModel.swift
//  SPORTSWay's
//
//  Created by apprenant100 on 12/03/2026.
//

import SwiftUI

struct ExerciceModel: Identifiable {
    let id = UUID()
    let image: ImageResource
    let title: String
    let sportType: SportTypeModel // modifié
    let breakTime: Double
    let reps: Int
    let setExercise: Int// modifié
}

/*
var exercices = [
    
    // MARK: - Course à pied 🏃
    ExerciceModel(
        image: .runn,
        title: "5km Plyométrique",
        sportType: SportTypeModel(type: "Course à pied"),
        breakTime: 60.0,
        reps: 1,
        setExercise: 3
    ),
    ExerciceModel(
        image: .sprint100m,
        title: "Sprint 100m",
        sportType: SportTypeModel(type: "Course à pied"),
        breakTime: 90.0,
        reps: 10,
        setExercise: 4
    ),
    ExerciceModel(
        image: .intervalRunning,
        title: "Fractionné 30/30",
        sportType: SportTypeModel(type: "Course à pied"),
        breakTime: 30.0,
        reps: 10,
        setExercise: 5
    ),
    
    // MARK: - Musculation 💪
    ExerciceModel(
        image: .pushUp,
        title: "Pompes Explosives",
        sportType: SportTypeModel(type: "Musculation"),
        breakTime: 60.0,
        reps: 15,
        setExercise: 4
    ),
    ExerciceModel(
        image: .squat,
        title: "Squat Jump",
        sportType: SportTypeModel(type: "Musculation"),
        breakTime: 75.0,
        reps: 12,
        setExercise: 4
    ),
    ExerciceModel(
        image: .pullUp,
        title: "Tractions",
        sportType: SportTypeModel(type: "Musculation"),
        breakTime: 90.0,
        reps: 8,
        setExercise: 4
    ),
    ExerciceModel(
        image: .deadlift,
        title: "Soulevé de Terre",
        sportType: SportTypeModel(type: "Musculation"),
        breakTime: 120.0,
        reps: 6,
        setExercise: 5
    ),
    
    // MARK: - Natation 🏊
    ExerciceModel(
        image: .freestyle,
        title: "Crawl 400m",
        sportType: SportTypeModel(type: "Natation"),
        breakTime: 120.0,
        reps: 1,
        setExercise: 4
    ),
    ExerciceModel(
        image: .butterfly,
        title: "Papillon 50m",
        sportType: SportTypeModel(type: "Natation"),
        breakTime: 90.0,
        reps: 4,
        setExercise: 3
    ),
    ExerciceModel(
        image: .backstroke,
        title: "Dos Crawlé 100m",
        sportType: SportTypeModel(type: "Natation"),
        breakTime: 60.0,
        reps: 3,
        setExercise: 4
    ),
    
    // MARK: - Boxe 🥊
    ExerciceModel(
        image: .jab,
        title: "Jab-Cross",
        sportType: SportTypeModel(type: "Boxe"),
        breakTime: 60.0,
        reps: 20,
        setExercise: 5
    ),
    ExerciceModel(
        image: .uppercut,
        title: "Uppercut Combo",
        sportType: SportTypeModel(type: "Boxe"),
        breakTime: 45.0,
        reps: 15,
        setExercise: 4
    ),
    ExerciceModel(
        image: .shadowBoxing,
        title: "Shadow Boxing",
        sportType: SportTypeModel(type: "Boxe"),
        breakTime: 30.0,
        reps: 1,
        setExercise: 6
    ),
    
    // MARK: - Yoga 🧘
    ExerciceModel(
        image: .sunSalutation,
        title: "Salutation au Soleil",
        sportType: SportTypeModel(type: "Yoga"),
        breakTime: 15.0,
        reps: 5,
        setExercise: 3
    ),
    ExerciceModel(
        image: .warrior,
        title: "Posture du Guerrier",
        sportType: SportTypeModel(type: "Yoga"),
        breakTime: 20.0,
        reps: 3,
        setExercise: 2
    ),
    ExerciceModel(
        image: .downwardDog,
        title: "Chien Tête en Bas",
        sportType: SportTypeModel(type: "Yoga"),
        breakTime: 10.0,
        reps: 5,
        setExercise: 3
    ),
    
    // MARK: - Football ⚽
    ExerciceModel(
        image: .dribble,
        title: "Slalom Dribbles",
        sportType: SportTypeModel(type: "Football"),
        breakTime: 45.0,
        reps: 8,
        setExercise: 4
    ),
    ExerciceModel(
        image: .shooting,
        title: "Tirs au But",
        sportType: SportTypeModel(type: "Football"),
        breakTime: 30.0,
        reps: 10,
        setExercise: 3
    ),
    ExerciceModel(
        image: .headerTraining,
        title: "Jeu de Tête",
        sportType: SportTypeModel(type: "Football"),
        breakTime: 30.0,
        reps: 15,
        setExercise: 3
    ),
    
    // MARK: - Basketball 🏀
    ExerciceModel(
        image: .layup,
        title: "Layup Enchainés",
        sportType: SportTypeModel(type: "Basketball"),
        breakTime: 30.0,
        reps: 10,
        setExercise: 4
    ),
    ExerciceModel(
        image: .threePoint,
        title: "Tirs à 3 Points",
        sportType: SportTypeModel(type: "Basketball"),
        breakTime: 45.0,
        reps: 15,
        setExercise: 3
    ),
    ExerciceModel(
        image: .dribbleCross,
        title: "Crossover Dribble",
        sportType: SportTypeModel(type: "Basketball"),
        breakTime: 20.0,
        reps: 20,
        setExercise: 4
    ),
    
    // MARK: - Tennis 🎾
    ExerciceModel(
        image: .forehand,
        title: "Coup Droit",
        sportType: SportTypeModel(type: "Tennis"),
        breakTime: 30.0,
        reps: 20,
        setExercise: 4
    ),
    ExerciceModel(
        image: .backhand,
        title: "Revers Lifté",
        sportType: SportTypeModel(type: "Tennis"),
        breakTime: 30.0,
        reps: 20,
        setExercise: 4
    ),
    ExerciceModel(
        image: .serve,
        title: "Service Smash",
        sportType: SportTypeModel(type: "Tennis"),
        breakTime: 45.0,
        reps: 15,
        setExercise: 3
    ),
    
    // MARK: - Cyclisme 🚴
    ExerciceModel(
        image: .sprintCycle,
        title: "Sprint Vélo",
        sportType: SportTypeModel(type: "Cyclisme"),
        breakTime: 90.0,
        reps: 1,
        setExercise: 6
    ),
    ExerciceModel(
        image: .hillClimb,
        title: "Montée de Col",
        sportType: SportTypeModel(type: "Cyclisme"),
        breakTime: 120.0,
        reps: 1,
        setExercise: 3
    ),
    ExerciceModel(
        image: .cadence,
        title: "Travail de Cadence",
        sportType: SportTypeModel(type: "Cyclisme"),
        breakTime: 60.0,
        reps: 5,
        setExercise: 4
    ),
    
    // MARK: - Rugby 🏉
    ExerciceModel(
        image: .tackle,
        title: "Plaquage",
        sportType: SportTypeModel(type: "Rugby"),
        breakTime: 60.0,
        reps: 10,
        setExercise: 4
    ),
    ExerciceModel(
        image: .rugbyPass,
        title: "Passes en Mouvement",
        sportType: SportTypeModel(type: "Rugby"),
        breakTime: 30.0,
        reps: 15,
        setExercise: 4
    ),
    ExerciceModel(
        image: .scrum,
        title: "Travail en Mêlée",
        sportType: SportTypeModel(type: "Rugby"),
        breakTime: 90.0,
        reps: 8,
        setExercise: 3
    ),
    
    // MARK: - Arts Martiaux 🥋
    ExerciceModel(
        image: .kata,
        title: "Kata Complet",
        sportType: SportTypeModel(type: "Arts Martiaux"),
        breakTime: 45.0,
        reps: 3,
        setExercise: 4
    ),
    ExerciceModel(
        image: .kick,
        title: "Enchaînement de Kicks",
        sportType: SportTypeModel(type: "Arts Martiaux"),
        breakTime: 30.0,
        reps: 10,
        setExercise: 5
    ),
    ExerciceModel(
        image: .grappling,
        title: "Grappling au Sol",
        sportType: SportTypeModel(type: "Arts Martiaux"),
        breakTime: 60.0,
        reps: 5,
        setExercise: 3
    ),
    
    // MARK: - Handball 🤾
    ExerciceModel(
        image: .handballShoot,
        title: "Tirs en Suspension",
        sportType: SportTypeModel(type: "Handball"),
        breakTime: 30.0,
        reps: 12,
        setExercise: 4
    ),
    ExerciceModel(
        image: .handballPass,
        title: "Passes Rapides",
        sportType: SportTypeModel(type: "Handball"),
        breakTime: 20.0,
        reps: 20,
        setExercise: 3
    ),
    ExerciceModel(
        image: .handballDribble,
        title: "Dribble en Pivot",
        sportType: SportTypeModel(type: "Handball"),
        breakTime: 30.0,
        reps: 10,
        setExercise: 4
    ),
    
    // MARK: - Volley-ball 🏐
    ExerciceModel(
        image: .spike,
        title: "Smash Attaque",
        sportType: SportTypeModel(type: "Volley-ball"),
        breakTime: 30.0,
        reps: 15,
        setExercise: 4
    ),
    ExerciceModel(
        image: .volleyServe,
        title: "Service Flottant",
        sportType: SportTypeModel(type: "Volley-ball"),
        breakTime: 20.0,
        reps: 20,
        setExercise: 3
    ),
    ExerciceModel(
        image: .block,
        title: "Contre au Filet",
        sportType: SportTypeModel(type: "Volley-ball"),
        breakTime: 30.0,
        reps: 12,
        setExercise: 4
    ),
    
    // MARK: - Crossfit 🏋️
    ExerciceModel(
        image: .burpee,
        title: "Burpees",
        sportType: SportTypeModel(type: "Crossfit"),
        breakTime: 60.0,
        reps: 20,
        setExercise: 5
    ),
    ExerciceModel(
        image: .kettlebell,
        title: "Kettlebell Swing",
        sportType: SportTypeModel(type: "Crossfit"),
        breakTime: 45.0,
        reps: 15,
        setExercise: 4
    ),
    ExerciceModel(
        image: .boxJump,
        title: "Box Jump",
        sportType: SportTypeModel(type: "Crossfit"),
        breakTime: 60.0,
        reps: 12,
        setExercise: 5
    ),
    
    // MARK: - Pilates 🧘
    ExerciceModel(
        image: .hundred,
        title: "The Hundred",
        sportType: SportTypeModel(type: "Pilates"),
        breakTime: 30.0,
        reps: 1,
        setExercise: 3
    ),
    ExerciceModel(
        image: .rollUp,
        title: "Roll Up",
        sportType: SportTypeModel(type: "Pilates"),
        breakTime: 20.0,
        reps: 10,
        setExercise: 3
    ),
    ExerciceModel(
        image: .legCircle,
        title: "Cercles de Jambes",
        sportType: SportTypeModel(type: "Pilates"),
        breakTime: 15.0,
        reps: 8,
        setExercise: 3
    )
]
*/
