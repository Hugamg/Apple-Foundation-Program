//
//  FestivalView.swift
//  Exercices
//
//  Created by apprenant100 on 09/03/2026.
//

import SwiftUI

struct FestivalView: View {
    var body: some View {
        ZStack {
            Image(.fruits1)
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 12) {
                Text("Music Festival 2025")
                    .font(.title).fontWeight(.bold).foregroundStyle(.black)
                Text("10 Juillet 2025")
                    .foregroundStyle(.secondary)
                Label("Place du Capitol - Toulouse", systemImage: "mappin")
                    .foregroundStyle(.black)
            }
            .frame(width: 300, height: 300)
            .background(.ultraThinMaterial)
            .colorScheme(.light)
            .clipShape(RoundedRectangle(cornerRadius: 16))
        }
    }
}



#Preview {
    FestivalView()
}
