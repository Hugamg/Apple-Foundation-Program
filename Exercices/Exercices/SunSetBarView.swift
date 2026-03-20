//
//  SunSetBarView.swift
//  Exercices
//
//  Created by apprenant100 on 09/03/2026.
//

import SwiftUI

struct SunSetBarView: View {
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color.indigo, Color.purple, Color.yellow, Color.orange]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            
            VStack {
                Label("Sun Set Bar", systemImage: "takeoutbag.and.cup.and.straw.fill")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(LinearGradient(gradient: Gradient(colors: [Color.orange, Color.yellow, Color.purple]), startPoint: .topLeading, endPoint: .bottom))
                                
                Spacer()
            }

            Circle()
                .fill(Color.yellow)
                .frame(width: 300, height: 300)
                .opacity(0.15)

            Circle()
                .fill(Color.yellow)
                .frame(width: 240, height: 240)
                .opacity(0.25)

            Circle()
                .fill(RadialGradient(
                    colors: [Color.yellow, Color.orange],
                    center: .center,
                    startRadius: 0,
                    endRadius: 100
                ))
                .frame(width: 170, height: 170)

        }
        }
}

#Preview {
    SunSetBarView()
}
