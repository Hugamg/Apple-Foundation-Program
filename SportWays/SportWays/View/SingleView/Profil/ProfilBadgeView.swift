//
//  ProfilBadgeView.swift
//  SportWays
//
//  Created by apprenant100 on 17/03/2026.
//

import SwiftUI

struct ProfilBadgeView: View {
    
    
    let icon: ImageResource
    let title: String
    let sportType: SportTypeModel
    let description: String
    
    var body: some View {
            HStack(spacing: 15){
                VStack {
                    Image(icon)
                        .resizable()
                        .scaledToFit()
                }
                .frame(width: 100, height: 130)
                .background(
                    RoundedRectangle(cornerRadius: 8)
                        .fill(.blocColorGray)
                )
                
                VStack(alignment: .leading,spacing: 5){
                    Text(title)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity,alignment: .leading)
                        .font(.title2)
                    //                        .font(.system(size: 46))
                        .fontWeight(.black)
                        .fontWidth(.expanded)
                    
                    
                    Text(sportType.type)
                        .foregroundStyle(.fontPrincipal)
                        .font(.callout)
                    
                    Spacer()
                    
                    Text("\(description)")
                        .foregroundStyle(.fontPrincipal)
                        .font(.footnote)
                        .fontWeight(.thin)
                        .padding(.bottom)
                    
                }
                .frame(height: 130)
                .padding(.vertical)
            }
            
            Divider()
                .overlay(.yellowTextButton)
                .frame(height: 2)
    }
}


#Preview {
    ProfilBadgeView(icon: badges[0].icon, title: badges[0].title, sportType: badges[0].sportType, description: badges[0].description)
    
}
