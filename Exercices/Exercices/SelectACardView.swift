//
//  SelectACardView.swift
//  Exercices
//
//  Created by apprenant100 on 09/03/2026.
//

import SwiftUI


// Création d'une structure CardView pour réutilisation
struct CardView: View {
    let color: Color
    let image: String
    let label: String
    
    var body: some View {
        ZStack{
            
            RoundedRectangle(cornerRadius: 16)
                .fill(color)
            
            VStack(spacing: 8){
                Image(systemName: image)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    
                Text(label)
                    .font(.title2)
                    
            }
            .foregroundStyle(.white)
        }
        .frame(width: 150, height: 250)
    }
}

struct CenterText {
    var text: String
    var color: Color
}

struct SelectACardView: View {
    @State var char : String = "questionmark"
    @State var charColor : Color = .black
    
    var body: some View {
        VStack(spacing: 25) {
            HStack(spacing: 25) {
                Button {
                    if char == "suit.spade.fill" {
                        char = "questionmark"
                        charColor = .black
                    } else {
                        char = "suit.spade.fill"
                        charColor = .black
                    }
                } label: {
                    CardView(color: .black, image: "suit.spade.fill", label: "As de Pique")
                }

                Button {
                    if char == "suit.heart.fill"{
                        char = "questionmark"
                        charColor = .black
                    } else {
                        char = "suit.heart.fill"
                        charColor = .red
                    }
                } label: {
                    CardView(color: .red, image: "suit.heart.fill", label: "As de Coeur")
                }

            }
            
            Image(systemName: char)
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(charColor)
                .padding()
            
            HStack(spacing: 25) {
                Button {
                    if char == "suit.diamond.fill" {
                        char = "questionmark"
                        charColor = .black
                    } else {
                        char = "suit.diamond.fill"
                        charColor = .red
                    }
                } label: {
                    CardView(color: .red, image: "suit.diamond.fill", label: "As de Carreau")
                }
                
                Button {
                    if char == "suit.club.fill" {
                        char = "questionmark"
                        charColor = .black
                    } else {
                        char = "suit.club.fill"
                        charColor = .black
                    }
                } label: {
                    CardView(color: .black, image: "suit.club.fill" , label: "As de Trèfle")
                }
                
            }
        }
        
    }
}

#Preview {
    SelectACardView()
}
