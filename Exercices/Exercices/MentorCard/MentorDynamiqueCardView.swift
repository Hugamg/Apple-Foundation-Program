//
//  MentorDynamiqueCardView.swift
//  Exercices
//
//  Created by apprenant100 on 10/03/2026.
//

import SwiftUI

struct MentorDynamiqueCardView: View {
    
    @State var systemName : String = "questionmark"
    
    var body: some View {
        VStack(spacing: 25) {
            HStack(spacing: 25){
                MentorCardView(
                    selectedName: $systemName,
                    icon: "suit.spade.fill",
                    text: "As de pique",
                    color: .black,
                    textColor: .white
                )
                
                MentorCardView(
                    selectedName: $systemName,
                    icon: "suit.heart.fill",
                    text: "As de coeur",
                    color: .red,
                    textColor: .white
                )
                
            }
            
            Image(systemName: systemName)
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(.black)
                .padding()
            
            HStack(spacing: 25){
                MentorCardView(
                    selectedName: $systemName,
                    icon: "suit.diamond.fill",
                    text: "As de carreau",
                    color: .red,
                    textColor: .white
                )
                
                MentorCardView(
                    selectedName: $systemName,
                    icon: "suit.club.fill",
                    text: "As de coeur",
                    color: .black,
                    textColor: .white
                )
                
            }
        }
    }
}



#Preview {
    MentorDynamiqueCardView()
}
