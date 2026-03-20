//
//  CounterView.swift
//  Exercices
//
//  Created by apprenant100 on 10/03/2026.
//

import SwiftUI

struct CounterView: View {
    @State var counter = 0
    var body: some View {
        ZStack{
            
            Color.brown
                .ignoresSafeArea()
            
            VStack{
                Text("Compteur : \(counter)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                
                HStack{
                    Button {
                        counter += 1
                    } label: {
                        Text("Incrémenter")
                            .padding()
                            .frame(maxWidth : .infinity)
                            .background(.white)
                            .foregroundStyle(.black)
                            .fontWeight(.bold)
                            .clipShape(RoundedRectangle(cornerRadius: 16))
                    }
                    
                    Spacer()
                    
                    Button {
                        counter = 0
                    } label: {
                        Text("Réinitialiser")
                            .padding()
                            .frame(maxWidth : .infinity)
                            .background(.red)
                            .foregroundStyle(.white)
                            .fontWeight(.bold)
                            .clipShape(RoundedRectangle(cornerRadius: 16))
                        
                    }
                }
            }
            .padding()
            
        }

       
        
    }
}

#Preview {
    CounterView()
}
