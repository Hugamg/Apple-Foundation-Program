//
//  BatteryView.swift
//  Exercices
//
//  Created by apprenant100 on 10/03/2026.
//

import SwiftUI

struct Battery {
    var symbol : String
    var color: Color
}

struct BatteryView: View {
    @State var battery: Double = 0
    
    var condition : Battery {
        checkBattery(battery)
    }
    
    var body: some View {
        ZStack{
            
            condition.color
                .ignoresSafeArea()
            
            VStack{
                ZStack{
                    Image(systemName: condition.symbol)
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: .infinity)
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .padding(50)
                    
                    if battery != 100 {
                        Text("\(Int(battery)) %")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundStyle(.black)
                    }
                }
                
                Slider(value: $battery, in: 0...100, step: 5) {
                    Text("Batterie")
                } minimumValueLabel: {
                    Text("0")
                } maximumValueLabel: {
                    Text("100")
                }
                .tint(.white)
                .padding()
            }
            
        }
        .onChange(of: battery) {
        }
    }
}


private func checkBattery(_ battery : Double) -> Battery {
    switch battery {
    case 0...25.99:
        return Battery(symbol: "battery.0", color: .red )
    case 26...50.99:
        return Battery(symbol: "battery.25", color: .orange)
    case 51...75.99:
        return Battery(symbol: "battery.50", color: .yellow)
    case 75...99.99:
        return Battery(symbol: "battery.75", color: .green)
    
    default:
        return Battery(symbol: "battery.100percent.bolt", color: .green)
    }
}

#Preview {
    BatteryView()
}
