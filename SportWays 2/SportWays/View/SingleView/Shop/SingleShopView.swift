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
    let points: Int
    
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
                        .fontWeight(.heavy)
                        .fontWidth(.expanded)
                        
                   
                    Text(category)
                        .foregroundStyle(.statutPartial)
                    
                    Spacer()
                    
                    HStack {
                        Text("\(points.description) points")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundStyle(.white)
                        
                        Button("Acheter") {
                            
                        }
                        .foregroundStyle(.black141414)
                        .padding(.horizontal)
                        .glassEffect(.clear.tint(.yellowTextButton))
                    }
                    .frame(maxWidth: .infinity,alignment: .trailing)
                    .padding(.bottom)
                }
            }
            .frame(height: 130)
            .padding(.vertical)
            
            
            
            
            
            
//            HStack{
//
//                Image(.cat)
//                    .resizable()
//                    .frame(width: 130, height: 130)
//                    .background(
//                        RoundedRectangle(cornerRadius: 8)
//                            .fill(.blocColorGray)
//                    )
//
//                VStack {
//                    Text("Cat")
//                        .foregroundColor(.white)
//                        .frame(maxWidth: .infinity,alignment: .leading)
//                        .font(.system(size: 46))
//                        .fontWeight(.heavy)
//                    Spacer()
//                        .background(Color.white)
//
//
//
//
//
//                    Text("Animal de compagnie")
//                        .foregroundStyle(.statutPartial)
//
//                    Spacer()
//
//                    HStack {
//                        Text("200 points")
//                            .font(.title2)
//                            .fontWeight(.bold)
//                            .foregroundStyle(.white)
//
//                        Button("Acheter") {
//
//                        }
//                        .foregroundStyle(.black)
//                        .padding(.horizontal)
//                        .glassEffect(.clear.tint(.yellowTextButton))
//                    }
//                    .frame(maxWidth: .infinity,alignment: .trailing)
//                    .padding(.bottom)
//                }
//            }
//            .frame(height: 130)
//
//           /*
//            HStack(spacing: 25){
//
//                ZStack{
//                    RoundedRectangle(cornerRadius: 16)
//                        .foregroundStyle(.blocColorGray)
//                        .frame(width: 130,height: 135)
//                    Image(.cat)
//                        .resizable()
//                        .frame(width: 120, height: 120)
//
//                }
//
//                VStack(alignment:.leading,spacing: 15){
//                    Text(items[0].title)
//                    Text("Fantôme")
//                        .foregroundColor(.white)
//
//                        .foregroundColor(.white)
//                        .font(.title2)
//                        .fontWeight(.bold)
//
//                    Text(items[0].label)
//                    Image(.ghost)
//                        .resizable()
//                        .frame(width: 120, height: 120)
//                        .foregroundColor(.white)
//                        .font(.default)
//                    Text("pikachu")
//                        .foregroundColor(.white)
//                    Image(.pickachu)
//                        .resizable()
//                        .frame(width: 120, height: 120)
//                        .font(.title2)
//
//                }
//                Spacer()
//            }*/
//            .globalPageStyle()
//        }
    }
}

#Preview {
    SingleShopView(
        image: items[0].image,
        name: items[0].title,
        category: items[0].label,
        points: items[0].point
    )
        .globalPageStyle()
}
