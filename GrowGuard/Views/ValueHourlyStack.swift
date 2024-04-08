//
//  ValueHourlyStack.swift
//  GrowGuard
//
//  Created by Marcel Ferreira Neves on 04.04.24.
//

import SwiftUI
import SDWebImage
import SDWebImageSwiftUI

struct ValueHourlyStack: View {
    @State var time: String
    @State var icon: URL
    @State var temp: String
    
    var body: some View {
        VStack {
            Text(time)
            
            WebImage(url: icon)
                .resizable()
                .scaledToFit()
                .frame(width: 60, height: 60)
            
            Text(temp)
                .fontWeight(.semibold)
        }
        .foregroundColor(.white)
        .padding(24)
        .padding(.horizontal, 22)
        .background(
        RoundedRectangle(cornerRadius: 40)
            .fill(Color.pastelPurple)
            .opacity(0.3)
        )
        .padding(12)
    }
}
