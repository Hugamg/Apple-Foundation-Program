//
//  EventModel.swift
//  SPORTSWay's
//
//  Created by apprenant100 on 12/03/2026.
//
import SwiftUI

struct EventModel: Identifiable {
    let id = UUID()
    let sportType: SportTypeModel //mod
    let image: ImageResource
    let date: String
    let timeStart: String
    let localisation: String
    let city: String
    let eventLevel: EventLevelModel
    var numbersOfPersonCurrent: Int
    let numbersOfPersonMax: Int
}


var events = [
    
    // MARK: - Course à pied 🏃
    EventModel(
        sportType: SportTypeModel(type: "Course à pied"),
        image: .runningTrack,
        date: "15/02/2025",
        timeStart: "08:00",
        localisation: "Parc de la Tête d'Or",
        city: "Lyon",
        eventLevel: EventLevelModel(label: "Débutant"),
        numbersOfPersonCurrent: 12,
        numbersOfPersonMax: 20
    ),
    EventModel(
        sportType: SportTypeModel(type: "Course à pied"),
        image: .runningRaceStart,
        date: "15/03/2025",
        timeStart: "07:30",
        localisation: "Bois de Boulogne",
        city: "Paris",
        eventLevel: EventLevelModel(label: "Intermédiaire"),
        numbersOfPersonCurrent: 25,
        numbersOfPersonMax: 30
    ),
    EventModel(
        sportType: SportTypeModel(type: "Course à pied"),
        image: .runningTrackBlue,
        date: "20/06/2025",
        timeStart: "09:00",
        localisation: "Parc Bordelais",
        city: "Bordeaux",
        eventLevel: EventLevelModel(label: "Avancé"),
        numbersOfPersonCurrent: 18,
        numbersOfPersonMax: 25
    ),
    
    // MARK: - Boxe 🥊
    EventModel(
        sportType: SportTypeModel(type: "Boxe"),
        image: .boxe1,
        date: "28/02/2025",
        timeStart: "18:30",
        localisation: "Salle Wagram",
        city: "Paris",
        eventLevel: EventLevelModel(label: "Avancé"),
        numbersOfPersonCurrent: 8,
        numbersOfPersonMax: 15
    ),
    EventModel(
        sportType: SportTypeModel(type: "Boxe"),
        image: .boxe2,
        date: "10/05/2025",
        timeStart: "19:00",
        localisation: "Fight Club Marseille",
        city: "Marseille",
        eventLevel: EventLevelModel(label: "Tous niveaux"),
        numbersOfPersonCurrent: 10,
        numbersOfPersonMax: 20
    ),
    EventModel(
        sportType: SportTypeModel(type: "Boxe"),
        image: .boxe3,
        date: "18/09/2025",
        timeStart: "20:00",
        localisation: "Ring Club",
        city: "Lille",
        eventLevel: EventLevelModel(label: "Débutant"),
        numbersOfPersonCurrent: 5,
        numbersOfPersonMax: 12
    ),
    
    // MARK: - Football ⚽
    EventModel(
        sportType: SportTypeModel(type: "Football"),
        image: .football2,
        date: "22/03/2025",
        timeStart: "10:00",
        localisation: "Stade Municipal",
        city: "Bordeaux",
        eventLevel: EventLevelModel(label: "Tous niveaux"),
        numbersOfPersonCurrent: 18,
        numbersOfPersonMax: 22
    ),
    EventModel(
        sportType: SportTypeModel(type: "Football"),
        image: .footballField,
        date: "05/07/2025",
        timeStart: "14:00",
        localisation: "Plaine des Sports",
        city: "Toulouse",
        eventLevel: EventLevelModel(label: "Intermédiaire"),
        numbersOfPersonCurrent: 14,
        numbersOfPersonMax: 22
    ),
    EventModel(
        sportType: SportTypeModel(type: "Football"),
        image: .footballTraining2,
        date: "15/01/2026",
        timeStart: "11:00",
        localisation: "Complexe Sportif",
        city: "Nantes",
        eventLevel: EventLevelModel(label: "Avancé"),
        numbersOfPersonCurrent: 20,
        numbersOfPersonMax: 22
    ),
    
    // MARK: - Musculation 💪
    EventModel(
        sportType: SportTypeModel(type: "Musculation"),
        image: .musculation1,
        date: "10/04/2025",
        timeStart: "17:00",
        localisation: "Basic Fit",
        city: "Nantes",
        eventLevel: EventLevelModel(label: "Intermédiaire"),
        numbersOfPersonCurrent: 6,
        numbersOfPersonMax: 10
    ),
    EventModel(
        sportType: SportTypeModel(type: "Musculation"),
        image: .musculation2,
        date: "22/08/2025",
        timeStart: "06:30",
        localisation: "Gym Club",
        city: "Paris",
        eventLevel: EventLevelModel(label: "Expert"),
        numbersOfPersonCurrent: 4,
        numbersOfPersonMax: 8
    ),
    EventModel(
        sportType: SportTypeModel(type: "Musculation"),
        image: .musculation3,
        date: "30/03/2026",
        timeStart: "18:00",
        localisation: "Iron Club",
        city: "Strasbourg",
        eventLevel: EventLevelModel(label: "Débutant"),
        numbersOfPersonCurrent: 3,
        numbersOfPersonMax: 10
    ),
    
    // MARK: - Yoga 🧘
    EventModel(
        sportType: SportTypeModel(type: "Yoga"),
        image: .yogaMen,
        date: "25/04/2025",
        timeStart: "09:00",
        localisation: "Studio Zen",
        city: "Nice",
        eventLevel: EventLevelModel(label: "Débutant"),
        numbersOfPersonCurrent: 10,
        numbersOfPersonMax: 15
    ),
    EventModel(
        sportType: SportTypeModel(type: "Yoga"),
        image: .yogaWoman,
        date: "08/11/2025",
        timeStart: "08:00",
        localisation: "Parc du Trocadéro",
        city: "Paris",
        eventLevel: EventLevelModel(label: "Intermédiaire"),
        numbersOfPersonCurrent: 12,
        numbersOfPersonMax: 20
    ),
    EventModel(
        sportType: SportTypeModel(type: "Yoga"),
        image: .yogaGroupMixed,
        date: "14/05/2026",
        timeStart: "07:30",
        localisation: "Plage des Catalans",
        city: "Marseille",
        eventLevel: EventLevelModel(label: "Tous niveaux"),
        numbersOfPersonCurrent: 8,
        numbersOfPersonMax: 25
    ),
    
    // MARK: - Natation 🏊
    EventModel(
        sportType: SportTypeModel(type: "Natation"),
        image: .swimming2,
        date: "01/06/2025",
        timeStart: "07:00",
        localisation: "Piscine Olympique",
        city: "Strasbourg",
        eventLevel: EventLevelModel(label: "Avancé"),
        numbersOfPersonCurrent: 15,
        numbersOfPersonMax: 25
    ),
    EventModel(
        sportType: SportTypeModel(type: "Natation"),
        image: .swimmingBreaststroke,
        date: "20/07/2026",
        timeStart: "08:30",
        localisation: "Centre Aquatique",
        city: "Lyon",
        eventLevel: EventLevelModel(label: "Débutant"),
        numbersOfPersonCurrent: 10,
        numbersOfPersonMax: 20
    ),
    
    // MARK: - Crossfit 🏋️
    EventModel(
        sportType: SportTypeModel(type: "Crossfit"),
        image: .crossFit1,
        date: "30/05/2025",
        timeStart: "06:30",
        localisation: "CrossFit Box",
        city: "Lyon",
        eventLevel: EventLevelModel(label: "Expert"),
        numbersOfPersonCurrent: 9,
        numbersOfPersonMax: 12
    ),
    EventModel(
        sportType: SportTypeModel(type: "Crossfit"),
        image: .crossFit2,
        date: "05/10/2026",
        timeStart: "07:00",
        localisation: "WOD Station",
        city: "Bordeaux",
        eventLevel: EventLevelModel(label: "Intermédiaire"),
        numbersOfPersonCurrent: 7,
        numbersOfPersonMax: 15
    ),
    
    // MARK: - Basketball 🏀
    EventModel(
        sportType: SportTypeModel(type: "Basketball"),
        image: .basketballCourt,
        date: "12/04/2025",
        timeStart: "15:00",
        localisation: "Gymnase Coubertin",
        city: "Paris",
        eventLevel: EventLevelModel(label: "Tous niveaux"),
        numbersOfPersonCurrent: 8,
        numbersOfPersonMax: 10
    ),
    EventModel(
        sportType: SportTypeModel(type: "Basketball"),
        image: .basketballHand,
        date: "25/09/2025",
        timeStart: "16:00",
        localisation: "Salle Omnisports",
        city: "Lyon",
        eventLevel: EventLevelModel(label: "Intermédiaire"),
        numbersOfPersonCurrent: 6,
        numbersOfPersonMax: 10
    ),
    EventModel(
        sportType: SportTypeModel(type: "Basketball"),
        image: .basketballSuccess,
        date: "18/02/2026",
        timeStart: "14:00",
        localisation: "Arena Sud",
        city: "Montpellier",
        eventLevel: EventLevelModel(label: "Avancé"),
        numbersOfPersonCurrent: 9,
        numbersOfPersonMax: 10
    ),
    
    // MARK: - Tennis 🎾
    EventModel(
        sportType: SportTypeModel(type: "Tennis"),
        image: .tennisCourt,
        date: "08/05/2025",
        timeStart: "10:00",
        localisation: "Tennis Club",
        city: "Nice",
        eventLevel: EventLevelModel(label: "Débutant"),
        numbersOfPersonCurrent: 4,
        numbersOfPersonMax: 8
    ),
    EventModel(
        sportType: SportTypeModel(type: "Tennis"),
        image: .tennisBallRacket,
        date: "14/08/2025",
        timeStart: "11:00",
        localisation: "Roland Garros Amateur",
        city: "Paris",
        eventLevel: EventLevelModel(label: "Avancé"),
        numbersOfPersonCurrent: 6,
        numbersOfPersonMax: 8
    ),
    EventModel(
        sportType: SportTypeModel(type: "Tennis"),
        image: .tennisBallRacket2,
        date: "22/03/2026",
        timeStart: "09:30",
        localisation: "Club des Sports",
        city: "Bordeaux",
        eventLevel: EventLevelModel(label: "Intermédiaire"),
        numbersOfPersonCurrent: 3,
        numbersOfPersonMax: 8
    ),
    
    // MARK: - Cyclisme 🚴
    EventModel(
        sportType: SportTypeModel(type: "Cyclisme"),
        image: .cyclingMan,
        date: "20/04/2025",
        timeStart: "07:00",
        localisation: "Vélodrome",
        city: "Roubaix",
        eventLevel: EventLevelModel(label: "Expert"),
        numbersOfPersonCurrent: 20,
        numbersOfPersonMax: 30
    ),
    EventModel(
        sportType: SportTypeModel(type: "Cyclisme"),
        image: .cyclingWoman,
        date: "15/06/2025",
        timeStart: "08:00",
        localisation: "Route des Crêtes",
        city: "Strasbourg",
        eventLevel: EventLevelModel(label: "Intermédiaire"),
        numbersOfPersonCurrent: 15,
        numbersOfPersonMax: 25
    ),
    EventModel(
        sportType: SportTypeModel(type: "Cyclisme"),
        image: .cyclingPeloton,
        date: "10/09/2026",
        timeStart: "06:30",
        localisation: "Piste Cyclable",
        city: "Nantes",
        eventLevel: EventLevelModel(label: "Débutant"),
        numbersOfPersonCurrent: 10,
        numbersOfPersonMax: 20
    ),
    
    // MARK: - Rugby 🏉
    EventModel(
        sportType: SportTypeModel(type: "Rugby"),
        image: .rugbyTryMen,
        date: "05/04/2025",
        timeStart: "14:00",
        localisation: "Stade Ernest Wallon",
        city: "Toulouse",
        eventLevel: EventLevelModel(label: "Intermédiaire"),
        numbersOfPersonCurrent: 25,
        numbersOfPersonMax: 30
    ),
    EventModel(
        sportType: SportTypeModel(type: "Rugby"),
        image: .rugbyWomenMaul,
        date: "28/09/2025",
        timeStart: "15:00",
        localisation: "Stade Chaban-Delmas",
        city: "Bordeaux",
        eventLevel: EventLevelModel(label: "Tous niveaux"),
        numbersOfPersonCurrent: 20,
        numbersOfPersonMax: 30
    ),
    EventModel(
        sportType: SportTypeModel(type: "Rugby"),
        image: .rugbyTackleMen,
        date: "12/04/2026",
        timeStart: "11:00",
        localisation: "Complexe Sportif",
        city: "Clermont-Ferrand",
        eventLevel: EventLevelModel(label: "Avancé"),
        numbersOfPersonCurrent: 28,
        numbersOfPersonMax: 30
    ),
    
    // MARK: - Arts Martiaux 🥋
    EventModel(
        sportType: SportTypeModel(type: "Arts Martiaux"),
        image: .martialArts1,
        date: "18/04/2025",
        timeStart: "19:00",
        localisation: "Dojo Central",
        city: "Paris",
        eventLevel: EventLevelModel(label: "Tous niveaux"),
        numbersOfPersonCurrent: 12,
        numbersOfPersonMax: 20
    ),
    EventModel(
        sportType: SportTypeModel(type: "Arts Martiaux"),
        image: .martialArts2,
        date: "22/07/2025",
        timeStart: "18:00",
        localisation: "Dojo Zen",
        city: "Lyon",
        eventLevel: EventLevelModel(label: "Avancé"),
        numbersOfPersonCurrent: 8,
        numbersOfPersonMax: 15
    ),
    EventModel(
        sportType: SportTypeModel(type: "Arts Martiaux"),
        image: .martialArts3,
        date: "30/01/2026",
        timeStart: "20:00",
        localisation: "Centre Budo",
        city: "Marseille",
        eventLevel: EventLevelModel(label: "Débutant"),
        numbersOfPersonCurrent: 6,
        numbersOfPersonMax: 15
    ),
    
    // MARK: - Handball 🤾
    EventModel(
        sportType: SportTypeModel(type: "Handball"),
        image: .handball1,
        date: "02/05/2025",
        timeStart: "18:00",
        localisation: "Palais des Sports",
        city: "Montpellier",
        eventLevel: EventLevelModel(label: "Intermédiaire"),
        numbersOfPersonCurrent: 12,
        numbersOfPersonMax: 14
    ),
    EventModel(
        sportType: SportTypeModel(type: "Handball"),
        image: .handball2,
        date: "19/10/2025",
        timeStart: "16:00",
        localisation: "Gymnase Lakanal",
        city: "Paris",
        eventLevel: EventLevelModel(label: "Débutant"),
        numbersOfPersonCurrent: 8,
        numbersOfPersonMax: 14
    ),
    EventModel(
        sportType: SportTypeModel(type: "Handball"),
        image: .handball3,
        date: "08/03/2026",
        timeStart: "19:30",
        localisation: "Hall des Sports",
        city: "Nantes",
        eventLevel: EventLevelModel(label: "Avancé"),
        numbersOfPersonCurrent: 13,
        numbersOfPersonMax: 14
    ),
    
    // MARK: - Volley-ball 🏐
    EventModel(
        sportType: SportTypeModel(type: "Volley-ball"),
        image: .voleyball1,
        date: "28/05/2025",
        timeStart: "17:00",
        localisation: "Beach Club",
        city: "Nice",
        eventLevel: EventLevelModel(label: "Tous niveaux"),
        numbersOfPersonCurrent: 10,
        numbersOfPersonMax: 12
    ),
    EventModel(
        sportType: SportTypeModel(type: "Volley-ball"),
        image: .volleyball2,
        date: "15/08/2025",
        timeStart: "10:00",
        localisation: "Plage du Prophète",
        city: "Marseille",
        eventLevel: EventLevelModel(label: "Intermédiaire"),
        numbersOfPersonCurrent: 8,
        numbersOfPersonMax: 12
    ),
    EventModel(
        sportType: SportTypeModel(type: "Volley-ball"),
        image: .volleybal6,
        date: "25/04/2026",
        timeStart: "09:00",
        localisation: "Salle Omnisports",
        city: "Lille",
        eventLevel: EventLevelModel(label: "Avancé"),
        numbersOfPersonCurrent: 11,
        numbersOfPersonMax: 12
    )
]
