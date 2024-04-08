//
//  CityOverview.swift
//  GrowGuard
//
//  Created by Marcel Ferreira Neves on 04.04.24.
//

import SwiftUI
import SDWebImage
import SDWebImageSwiftUI

struct CityOverview: View {
    @StateObject private var model = CityOverviewModel(lat: 48.0, long: 49.0)
    
    @State var city: String
    @State var time: String
    
    var body: some View {
        
        bodyParts
    }
    
    private var bodyParts: some View {
        VStack(spacing: 12) {
            
            header
            
            currenWeather
            
            currentInfos
            
            dailyForecast
            
        }
    }
    
    private var header: some View {
        VStack {
            Text(city)
                .font(.title)
                .fontWeight(.semibold)
            
            Text(time)
                .font(.title3)
        }
        .padding(16)
    }
    
    private var currenWeather: some View {
        VStack {
            WebImage(url: model.iconURL)
                .resizable()
            //                .scaledToFit()
                .frame(width: 190, height: 210)
                .offset(y: 30)
            
            Text(model.temp)
                .font(.system(size: 64))
            
            Text(model.description)
        }
        
        .foregroundColor(.white)
        .padding(8)
        .padding(.horizontal, 25)
        .background(
            RoundedRectangle(cornerRadius: 40)
                .fill(Color.pastelPurple)
                .opacity(0.3)
        )
        .overlay(
            Text("Thursday, April 4 2024")
                .padding(15)
                .background(
                    RoundedRectangle(cornerRadius: 40)
                        .fill(Color.pastelYellow)
                        .opacity(0.4)
                )
                .offset(y: -20),
            alignment: .top
        )
    }
    
    private var currentInfos: some View {
        HStack(spacing: 25) {
            ValueDescriptionStack(icon: "thermometer", boldText: model.feelsLike, description: "Feels Like")
            ValueDescriptionStack(icon: "humidity", boldText: model.humidity, description: "Humidity")
            ValueDescriptionStack(icon: "cloud", boldText: model.pressure, description: "Pressure")
            ValueDescriptionStack(icon: "wind", boldText: model.windSpeed, description: "Windspeed")
        }
        .padding()
        .padding(.vertical, 0)
        .frame(maxWidth: .infinity)
        .background(
            RoundedRectangle(cornerRadius: 40)
                .fill(Color.pastelYellow)
                .opacity(0.3)
        )
        .padding(.horizontal, 25)
    }
    
    private var dailyForecast: some View {
        VStack {
            HStack {
                Text("Today")
                
                Spacer()
                
                NavigationLink(
                    destination: Next7DaysView()) {
                        Text("Next 7 Day's ")
                        Image(systemName: "chevron.right")
                    }
                    .foregroundColor(.primary)
            }
            .font(Font.body.bold())
            .padding(.horizontal, 32)
            .padding(.top, 8)
            
            ScrollView(.horizontal) {
                HStack {
                    Spacer()
                        .frame(width: 8)
                    
                    if model.weatherData != nil {
                        ForEach(model.weatherData!.hourly, id:\.dt) {forecast in
                            let url = URL(string: "https://openweathermap.org/img/wn/\(forecast.weather.first?.icon ?? "10d")@2x.png")!
                            ValueHourlyStack(time: forecast.dt.description, icon: url, temp: "\(forecast.temp)")
                        }
                    }
                }
                Spacer()
            }
        }
    }
    
}

#Preview {
    ContentView()
}
