//
//  Next7DaysView.swift
//  GrowGuard
//
//  Created by Marcel Ferreira Neves on 04.04.24.
//

import SwiftUI

struct Next7DaysView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
            ScrollView {
                navigationBar
                
                Text("City Name")
                    .font(.title)
                    .fontWeight(.semibold)
                
                Spacer()
                    .frame(height: 50)
                
                VStack(spacing: 16) {
                    DailyForecastView(date: "Apr. 7", icon: "cloud", high: "20°C", low: "13°C")
                    DailyForecastView(date: "Apr. 8", icon: "cloud", high: "20°C", low: "13°C")
                    DailyForecastView(date: "Apr. 9", icon: "cloud", high: "20°C", low: "13°C")
                    DailyForecastView(date: "Apr. 10", icon: "cloud", high: "20°C", low: "13°C")
                    DailyForecastView(date: "Apr. 11", icon: "cloud", high: "20°C", low: "13°C")
                    DailyForecastView(date: "Apr. 12", icon: "cloud", high: "20°C", low: "13°C")
                    DailyForecastView(date: "Apr. 13", icon: "cloud", high: "20°C", low: "13°C")
                }
                .padding()
                .padding(.vertical, 8)
                .frame(maxWidth: .infinity)
                .background(
                    RoundedRectangle(cornerRadius: 40)
                        .fill(Color.pastelYellow)
                        .opacity(0.3)
                )
                .padding(.horizontal, 25)
                Spacer()
            }
            .navigationBarHidden(true)
            .background(LinearGradient (colors: [Color.pastelOrange, Color.pastelPink], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
                .opacity(0.6)
            )
        }
    
    
    private var navigationBar: some View {
        HStack {
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }) {
                HStack {
                    Image(systemName: "chevron.left")
                    Text("Back")
                }
            }
            .foregroundColor(.primary)
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    Next7DaysView()
}
