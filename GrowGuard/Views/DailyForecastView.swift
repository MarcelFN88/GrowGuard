//
//  DailyForecastView.swift
//  GrowGuard
//
//  Created by Marcel Ferreira Neves on 07.04.24.
//

import SwiftUI

struct DailyForecastView: View {
    @State var date: String
    @State var icon: String
    @State var high: String
    @State var low: String
    var body: some View {
        HStack {
            Text(date)
                .font(.title3)
                .fontWeight(.semibold)
            
            Spacer()
            Image(systemName: icon)
            VStack {
                Text(high)
                    .fontWeight(.semibold)
                
                Text(low)
            }
        }
    }
}
