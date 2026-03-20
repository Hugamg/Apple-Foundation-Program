//
//  LanguageView.swift
//  Exercices
//
//  Created by apprenant100 on 09/03/2026.
//

import SwiftUI

struct LanguageView: View {
    var body: some View {
        VStack(spacing: 30){
            HStack {
                Text("Swift Language")
                    .font(.title)
                    .fontWeight(.bold)
                Image(systemName: "swift")
                    .font(.system(size: 25))
                        .fontWeight(.black)
                        .foregroundStyle(.orange)

            }
            
            HStack {
                Text("Version 6.1.0")
                    .font(.system(size: 22))
                    .foregroundStyle(.gray)
                    .fontWeight(.bold)
                Spacer()
                Text("Since 2014")
                    .font(.system(size: 22))
                    .fontWeight(.bold)
                    
            }
        }
        .padding()
    }
}

#Preview {
    LanguageView()
}
