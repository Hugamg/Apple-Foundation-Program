//
//  FruitsView.swift
//  Exercices
//
//  Created by apprenant100 on 11/03/2026.
//

import SwiftUI

struct FruitsView: View {
    var body: some View {
        NavigationStack{
            ForEach(fruits) { fruit in
                NavigationLink{
                    FruitView(fruitData: fruit)
                } label: {
                    VStack{
                        HStack(){
                            Image(fruit.image)
                                .resizable()
                                .font(.title)
                                .scaledToFit()
                                .frame(width:150, height: 150)
                                .background(
                                    RoundedRectangle(cornerRadius: 16)
                                        .fill(fruit.color)
                                )
                            
                            VStack(alignment: .leading, spacing: 10){
                                Text(fruit.titleFruit)
                                    .font(.title)
                                    .fontWeight(.black)
                                    .foregroundStyle(.black)
                                
                                
                                Text(fruit.text)
                                    .foregroundStyle(.gray)
                                    .multilineTextAlignment(.leading)
                            }
                        }
                    }
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                
            }
            
        }
    }
}

#Preview {
    FruitsView()
}
