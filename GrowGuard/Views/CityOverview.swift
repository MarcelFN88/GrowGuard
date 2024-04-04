//
//  CityOverview.swift
//  GrowGuard
//
//  Created by Marcel Ferreira Neves on 04.04.24.
//

import SwiftUI

struct CityOverview: View {
    
    @State var city: String
    @State var time: String
    
    var body: some View {
        
        VStack(spacing: 28) {
            VStack {
                Text(city)
                    .font(.title)
                    .fontWeight(.semibold)
                
                Text(time)
                    .font(.title3)
            }
            .padding(24)
            
            VStack {
                Image(systemName: "cloud")
                    .resizable()
                    .frame(width: 140, height: 110)
                    .offset(y: 10)
                
                Text("23°C")
                    .font(.system(size: 64))
                
                Text("Moon Cloud Fast Wind")
            }
            .foregroundColor(.white)
            .padding(32)
            .padding(.horizontal, 20)
            .background(
                RoundedRectangle(cornerRadius: 40)
                    .fill(Color.pastelPurple)
                    .opacity(0.3)
            )
            .overlay(
                Text("Thursday, April 4 2024")
                    .padding(10)
                    .background(
                        RoundedRectangle(cornerRadius: 40)
                            .fill(Color.pastelYellow)
                            .opacity(0.4)
                    )
                    .offset(y: -20),
                alignment: .top
            )
            
            HStack(spacing: 8) {
                ValueDescriptionStack()
                ValueDescriptionStack()
                ValueDescriptionStack()
                ValueDescriptionStack()
            }
            .padding(.horizontal, 8)
            .padding(.vertical, 8)
            .frame(maxWidth: .infinity)
            .background(
                RoundedRectangle(cornerRadius: 40)
                    .fill(Color.pastelYellow)
                    .opacity(0.3)
            )
            .padding(.horizontal, 8)
            
            VStack {
                HStack {
                    Text("Today")
                    
                    Spacer()
                    
                    Text("Next 7 Day's ")
                    Image(systemName: "chevron.right")
                }
                .font(Font.body.bold())
                .padding(.horizontal, 32)
                .padding(.bottom, 8)
                
                ScrollView(.horizontal) {
                    HStack {
                        Spacer()
                            .frame(width: 8)
                        
                        ValueHourlyStack()
                        ValueHourlyStack()
                        ValueHourlyStack()
                        ValueHourlyStack()
                        ValueHourlyStack()
                        ValueHourlyStack()
                        ValueHourlyStack()
                    }
                }
            }
            
            Spacer()
        }
    }
}

#Preview {
    CityOverview(city: "Nova Iguaçu", time: "10:57")
}
