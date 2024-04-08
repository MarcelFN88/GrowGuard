//
//  ContentView.swift
//  GrowGuard
//
//  Created by Marcel Ferreira Neves on 04.04.24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var model = ContentViewModel()
    
    var body: some View {
        NavigationView {
            TabView {
                ForEach(model.cities) { city in
                    CityOverview(city: city.name, time: "10:57")
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
            .navigationBarHidden(true)
            .background(LinearGradient (colors: [Color.pastelOrange, Color.pastelPink], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
                .opacity(0.6)
            )          
        }
    }
}


#Preview {
    ContentView()
}
