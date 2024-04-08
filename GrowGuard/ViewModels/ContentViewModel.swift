//
//  ContentViewModel.swift
//  GrowGuard
//
//  Created by Marcel Ferreira Neves on 04.04.24.
//

import SwiftUI

final class ContentViewModel: ObservableObject {
    @Published var cities = [City]()
    
    init() {
        cities = City.placeholder
    }
}
