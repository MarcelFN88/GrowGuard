//
//  ContentView.swift
//  GrowGuard
//
//  Created by Marcel Ferreira Neves on 04.04.24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // Background Layer
        ZStack {
            LinearGradient (colors: [Color.pastelOrange, Color.pastelPink], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
                .opacity(0.7)
            
            VStack(spacing: 32) {
                VStack {
                    Text("Nova Iguaçu")
                        .font(.title)
                        .fontWeight(.semibold)
                    
                    Text("10:57")
                        .font(.title3)
                }
                
                HStack {
                    VStack {
                        Image(systemName: "house")
                        
                        Text("42 %")
                            .fontWeight(.bold)
                        
                        Text("Precipitation")
                            .font(.footnote)
                            .foregroundColor(.gray)
                    }
                  
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(
                RoundedRectangle(cornerRadius: 40)
                    .fill(Color.pastelYellow)
                    .opacity(0.4)
                )
                .padding(.horizontal, 25)
                
                Spacer()
            }
            
        }
        
    }
}

#Preview {
    ContentView()
}
