//
//  SingleMySportView.swift
//  SportWays
//
//  Created by apprenant100 on 16/03/2026.
//

import SwiftUI

struct SingleMySportView: View {
    var icon : String
    var sportType: String
    var body: some View {
        ZStack{
            HStack{
                Image(systemName: icon)
                    .font(.title2)
                Text(sportType)
                    .font(.title2)
            }
            .padding(.horizontal, 10)
            .background(
                RoundedRectangle(cornerRadius: 16)
                    .foregroundStyle(.yellowTextButton)
                    .frame(maxWidth:.infinity)
            )
        }
    }
}

#Preview {
    SingleMySportView(icon: "figure.run", sportType: profils[0].sportType[0].type)
}
