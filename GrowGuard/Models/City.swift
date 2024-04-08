//
//  City.swift
//  GrowGuard
//
//  Created by Marcel Ferreira Neves on 04.04.24.
//

import SwiftUI

struct City: Identifiable {
    let id = UUID()
    let name: String
    let lat: Double
    let long: Double
    
    
    static var placeholder: [City] {
        [
            City(name: "Ennepetal", lat: 51.29848, long: 7.3629),
            City(name: "Nova Iguaçu", lat: -22.75917, long: -43.45111)
        ]
        
    }
}
