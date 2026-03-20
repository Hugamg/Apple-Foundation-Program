//
//  MentorColorView.swift
//  Exercices
//
//  Created by apprenant100 on 12/03/2026.
//

import SwiftUI

struct MentorColorView: View {
    var body: some View {
        VStack {
            Text("Niveau débutant")
            
                .font(.largeTitle)
                .fontWeight(.semibold)
                .fontDesign(.rounded)
                .monospaced()
                .foregroundStyle(Color.lvl)
                .shadow(color: .white, radius: 1, x: 0, y: 0)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.black)
    }
}

#Preview {
    MentorColorView()
}
