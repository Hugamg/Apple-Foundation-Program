//
//  FruitView.swift
//  Exercices
//
//  Created by apprenant100 on 11/03/2026.
//

import SwiftUI

struct FruitView: View {
    @State var fruitData: Fruit
    var body: some View {
        VStack{
                Image(fruitData.image)
                    .resizable()
                    .font(.title)
                    .scaledToFit()
                    .frame(width:230)
                    .background(
                        RoundedRectangle(cornerRadius: 16)
                            .fill(fruitData.color)
                    )

            VStack(spacing : 50){
                    Text(fruitData.titleFruit)
                        .font(.largeTitle)
                        .fontWeight(.black)
                        
                        
                    Text(fruitData.text)
                        .foregroundStyle(.gray)
                    //                            Spacer()
                
            }
            .padding()
            .ignoresSafeArea()
        }
    }
}

#Preview {
    FruitView(fruitData : fruits[0])
}
