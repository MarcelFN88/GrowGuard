//
//  ValueDescriptionStack.swift
//  GrowGuard
//
//  Created by Marcel Ferreira Neves on 04.04.24.
//

import SwiftUI

struct ValueDescriptionStack: View {
    var body: some View {
        VStack {
            Image(systemName: "house")
            
            Text("42 %")
                .fontWeight(.bold)
                
            
            Text("Precipitation")
                .font(.footnote)
                .foregroundColor(.gray)
        }
    }
}

#Preview {
    ValueDescriptionStack()
}
