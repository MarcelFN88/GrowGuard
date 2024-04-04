//
//  City.swift
//  GrowGuard
//
//  Created by Marcel Ferreira Neves on 04.04.24.
//

import SwiftUI

struct City {
    let name: String
    let lat: Double
    let long: Double
    
    
    static var placeholder: [City] {
        [
            City(name: "Ennepetal", lat: 0.0, long: 0.0),
            City(name: "Amsterdam", lat: 0.0, long: 0.0),
            City(name: "Hagen", lat: 0.0, long: 0.0),
            City(name: "Nova Iguaçu", lat: 0.0, long: 0.0)
        ]
        
    }
}
