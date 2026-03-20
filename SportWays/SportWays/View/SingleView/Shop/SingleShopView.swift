//
//  SingleShopViea.swift
//  SportWays
//
//  Created by apprenant105 on 16/03/2026.
//

import SwiftUI

struct SingleShopView: View {
    
    let image: ImageResource
    let name: String
    let category: String
    let points: Int?
    let isShowingInformations: Bool
    
    var body: some View {
        //        ZStack{
        
        HStack(spacing: 15){
            
            VStack {
                Image(image)
                    .resizable()
                    .scaledToFit()
            }
            .frame(width: 100, height: 130)
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .fill(.blocColorGray)
            )
            
            VStack(alignment: .leading,spacing: 5){
                Text(name)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity,alignment: .leading)
                    .font(.title2)
                //                        .font(.system(size: 46))
                    .fontWeight(.black)
                    .fontWidth(.expanded)
                
                
                Text(category)
                    .foregroundStyle(.fontPrincipal)
                    .font(.callout)
                
                Spacer()
                
                if let points = points {
                    HStack {
                        
                        if isShowingInformations {
                            Text("\(points.description) pts")
                                .font(.body)
                                .fontWeight(.bold)
                                .foregroundStyle(.statutPartial)
                            
                        }
                        
                        if isShowingInformations {
                            Button("Acheter") { }
                                .foregroundStyle(.black141414)
                                .padding(.horizontal)
                                .padding(.vertical, 4)
                                .glassEffect(.clear.tint(.yellowTextButton))
                                .font(.title3)
                                .fontWidth(.expanded)
                                .fontWeight(.semibold)
                                                        } else {
                            Button("Appliquer") { }
                                .foregroundStyle(.black141414)
                                .padding(.horizontal)
                                .padding(.vertical, 4)
                                .glassEffect(.clear.tint(.yellowTextButton))
                                .font(.title3)
                                .fontWidth(.expanded)
                                .fontWeight(.semibold)
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .padding(.bottom)
                }

            }
            .frame(height: 130)
            .padding(.vertical)
        }
    }
}
#Preview {
    SingleShopView(
        image: items[0].image,
        name: items[0].title,
        category: items[0].label,
        points: items[0].point,
        isShowingInformations: true
    )
    .globalPageStyle()
}
