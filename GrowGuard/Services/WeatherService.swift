//
//  WeatherService.swift
//  GrowGuard
//
//  Created by Marcel Ferreira Neves on 07.04.24.
//

import SwiftUI
import Combine

struct WeatherService {
    static func getWeatherData(lat: Double, long: Double, units: String = "metric") -> AnyPublisher<WeatherData, Error> {
        let url = URL(string:"https://api.openweathermap.org/data/3.0/onecall?lat=\(lat)&lon=\(long)&units=\(units)&appid=\(Statics.apiKey)")!
        
        return URLSession.shared
            .dataTaskPublisher(for: url)
            .tryMap { element -> Data in
                guard let httpResponse = element.response as? HTTPURLResponse,
                      httpResponse.statusCode == 200 else {
                    throw URLError(.badServerResponse)
                    
                }
                
                return element.data
                
            }
            .decode(type: WeatherData.self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
}
