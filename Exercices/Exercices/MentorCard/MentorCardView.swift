//
//  MentorCardView.swift
//  Exercices
//
//  Created by apprenant100 on 10/03/2026.
//

import SwiftUI

struct MentorCardView: View {
    
    @Binding var selectedName: String
    var icon: String
    var text : String
    var color: Color
    var textColor : Color
    
    var body: some View {
        Button {
            selectedName = icon
        } label: {
            VStack {
                Image(systemName: icon)
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .padding()
                
                Text(text)
                    .foregroundStyle(.white)
            }
            .frame(width: 120, height: 160)
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .foregroundStyle(color)
            )
        }
    }
}

#Preview {
    MentorCardView(
        selectedName: .constant("questionmark"),
        icon: "suit.spade.fill",
        text: "As de pique",
        color: .black,
        textColor: .white
    )
}
