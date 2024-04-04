//
//  ValueHourlyStack.swift
//  GrowGuard
//
//  Created by Marcel Ferreira Neves on 04.04.24.
//

import SwiftUI

struct ValueHourlyStack: View {
    var body: some View {
        VStack {
            Text("8:00")
            
            Image(systemName: "cloud")
                .resizable()
                .frame(width: 50, height: 50)
            
            Text("23°C")
                .fontWeight(.semibold)
        }
        .foregroundColor(.white)
        .padding(24)
        .padding(.horizontal, 12)
        .background(
        RoundedRectangle(cornerRadius: 40)
            .fill(Color.pastelPurple)
            .opacity(0.3)
        )
        .padding(12)
    }
}

#Preview {
    ValueHourlyStack()
}
