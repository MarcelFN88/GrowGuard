//
//  Next7DaysView.swift
//  GrowGuard
//
//  Created by Marcel Ferreira Neves on 04.04.24.
//

import SwiftUI

struct Next7DaysView: View {
    @Environment(\.presentationMode) var presentationMode
    @State var forecasts: [WeatherData.Daily]
    
    let dateFormatter: DateFormatter = {
        let f = DateFormatter()
        f.dateFormat = "dd.MM."
        return f
    }()
    
    var body: some View {
            ScrollView {
                navigationBar
                
                Text("City Name")
                    .font(.title)
                    .fontWeight(.semibold)
                
                
                VStack(spacing: 16) {
                    ForEach(forecasts, id: \.dt) { forecast in
                        DailyForecastView(date: dateFormatter.string(from: forecast.dt), icon: forecast.weather.first?.icon ?? "10d", high: "\(forecast.temp.max)°", low: "\(forecast.temp.min)°")}
                }
                .padding(8)
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

