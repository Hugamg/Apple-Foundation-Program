//
//  ProfileCircleCalledViewS.swift
//  SportWays
//
//  Created by apprenant108 on 16/03/2026.
//

import SwiftUI

struct ProfileCircleCalledView: View {
    
    var profileCircle: ProfilModel
    
    
    var body: some View {
        VStack {
            Image(profileCircle.imageProfil)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
            Text(profileCircle.pseudo)
        }
    }
}

#Preview {
    ProfileCircleCalledView(profileCircle: profils[1])
}
