//
//  ButtonSingleProfilView.swift
//  SportWays
//
//  Created by apprenant100 on 16/03/2026.
//

import SwiftUI

struct ButtonSingleProfilView: View {
    @Binding var selected: Int
    let buttonID: Int
    var counter: Int
    var text: String
    var iconName: String
    
    private var isSelected: Bool {
        selected == buttonID
    }
    
    
    var body: some View {
        Button {
                selected = buttonID
            } label: {
                ZStack(alignment: .leading) {
                    RoundedRectangle(cornerRadius: 16)
                        .foregroundStyle(isSelected ? .yellowTextButton : .blocColorGray)
                        .frame(width: 120, height: 140)
                    
                    VStack(alignment: .leading, spacing: 13) {
                        Image(systemName: iconName)
                            .font(.largeTitle)
                            .foregroundStyle(isSelected ? .black141414 : .yellowTextButton)
                            .fontWeight(.bold)
                        
                        Text(text)
                            .font(.headline)
                            .foregroundStyle(isSelected ? .black141414  : .fontPrincipal)
                            .fontWeight(.bold)
                        
                        Text("\(counter)")
                            .font(.largeTitle)
                            .foregroundStyle(isSelected ? .black141414  : .fontPrincipal)
                            .fontWeight(.bold)
                    }
                    .padding(10)
                    }
            }
        
        }
    }

#Preview {
    ButtonSingleProfilView(
        selected: .constant(
            1
        ),
        buttonID: 1,
        counter: profils[0].challenge.count,
        text: "Challenge",
        iconName: "checkmark"
    )
}
