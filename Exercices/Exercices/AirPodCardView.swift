//
//  AirPodCardView.swift
//  Exercices
//
//  Created by apprenant100 on 09/03/2026.
//

import SwiftUI

struct AirPodCardView: View {
    var body: some View {
        Spacer()
        VStack(spacing: 30){
            
            Spacer()
            HStack {
                Image(systemName:"airpods.pro")
                    .font(.system(size: 85))
            }

            Text("Les AirPods pro offrent une qualité sonore incroyable avec la réduction active du bruit. Confortable et faciles à utiliser ")
                .font(.title3)
                .foregroundStyle(.gray)
                .fontWeight(.medium)
                .frame(maxWidth: .infinity, alignment: .leading)

            Spacer()

            ZStack(){
                Rectangle()
                    .fill(Color.orange)
                    .frame(height: 90)
                    .cornerRadius(10)
                    .shadow(radius: 15)
                HStack(){
                    Image(systemName:"cart.fill")
                        .font(.system(size: 45))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    VStack(){
                        Text("AirPods Pro")
                            .font(.title2)
                            .fontWeight(.bold)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text("$299.99")
                            .foregroundStyle(.white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                }
                .padding(60)
            }
        }
        .padding()
        
        
    }
}


#Preview {
    AirPodCardView()
}
