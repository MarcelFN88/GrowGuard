//
//  DailyForecastView.swift
//  GrowGuard
//
//  Created by Marcel Ferreira Neves on 07.04.24.
//

import SwiftUI
import SDWebImage
import SDWebImageSwiftUI

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
          
            WebImage(url: URL(string: "https://openweathermap.org/img/wn/\(icon)@2x.png"))
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
            
            Spacer()
            VStack(alignment: .trailing) {
                Text(high)
                    .fontWeight(.semibold)
                Spacer()
                
                Text(low)
            }
            .frame(width: 60)
        }
    }
}
