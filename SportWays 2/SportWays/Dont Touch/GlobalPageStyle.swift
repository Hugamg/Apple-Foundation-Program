//
//  GlobalPageStyle.swift
//  SportWays
//
//  Created by apprenant100 on 13/03/2026.
//


// Ce fichier permet de mettre un background transparent, un padding, un style responsive sur toutes les pages du projet


import SwiftUI

struct GlobalPageStyle: ViewModifier {
    func body(content: Content) -> some View {
        ZStack{
            Color.black141414
                .ignoresSafeArea()
            content
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding()
            
        }
    }
}
    // Raccourci vers l'extérieur
    extension View {
        func globalPageStyle() -> some View {
            self.modifier(GlobalPageStyle())
        }
    }
