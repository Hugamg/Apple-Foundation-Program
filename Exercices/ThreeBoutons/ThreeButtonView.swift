//
//  ThreeButtonView.swift
//  Exercices
//
//  Created by apprenant100 on 10/03/2026.
//

import SwiftUI

struct ThreeButtonView: View {
    @State var bgColor: Color = .white

    var body: some View {
        ZStack{
                bgColor
                .ignoresSafeArea()
            
            HStack(spacing: 10) {
                ButtonView(color: $bgColor, icon: "eyedropper.halffull", text: "Red", btColor: .red)
                
                
                ButtonView(color: $bgColor, icon: "eyedropper.halffull", text: "Blue", btColor: .blue)
                
                ButtonView(color: $bgColor, icon: "eyedropper.halffull", text: "Green", btColor: .green)
                
            }
        }
    }
}


#Preview {
    ThreeButtonView()
}
