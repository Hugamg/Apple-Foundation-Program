//
//  ShopView.swift
//  SPORTSWay's
//
//  Created by apprenant100 on 13/03/2026.
//

import SwiftUI

struct ShopView: View {
    var body: some View {
        ZStack {
            VStack {
                Text("Points : 12250")
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundStyle(.white)

                Divider()
                Rectangle()
                    .frame(width: .infinity, height: 1)
                    .foregroundStyle(.yellowTextButton)
                
                Divider()
                ScrollView {
                    ForEach(profil.items) { item in
                        SingleShopView(
                            image: item.image,
                            name: item.title,
                            category: item.label,
                            points: item.point
                        )
                        
                        Divider()
                            .overlay(.yellowTextButton)
                            .frame(height: 20)
                        
                    }
                }
                .scrollIndicators(.hidden)
            }
            .globalPageStyle()
        }
    }
}



#Preview {
    ShopView()
}


