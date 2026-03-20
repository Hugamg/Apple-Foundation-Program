//
//  ButtonView.swift
//  Exercices
//
//  Created by apprenant100 on 10/03/2026.
//

import SwiftUI

struct ButtonView: View {
    
    @Binding var color: Color
    var icon: String
    var text : String
    var btColor : Color
    
    var body: some View {
        Button {
            if color == btColor {
                color = .white
            } else {
                color = btColor
            }
        } label: {
            HStack {
                Image(systemName: icon)
                    .foregroundStyle(.black)
                    .font(.title)

                Text(text)
                    .foregroundStyle(.black)
            }
            .frame(width: 120, height: 80)
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .foregroundStyle(btColor)
            )
            
        }

        
    }
}

#Preview {
    ButtonView(color: .constant(.red), icon:"eyedropper.halffull", text: "Red", btColor: .red)
}
