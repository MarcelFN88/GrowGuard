import Foundation

struct WeatherData: Codable {
    struct Current: Codable {
        struct Weather: Codable {
            let id: Int
            let main: String
            let description: String
            let icon: String
        }
        
        let dt: Date
        let sunrise: Date
        let sunset: Date
        let temp: Double
        let feelsLike: Double
        let pressure: Int
        let humidity: Int
        let dewPoint: Double
        let uvi: Double
        let clouds: Int
        let visibility: Int
        let windSpeed: Double
        let windDeg: Int
        let windGust: Double
        let weather: [Weather]
        
        private enum CodingKeys: String, CodingKey {
            case dt
            case sunrise
            case sunset
            case temp
            case feelsLike = "feels_like"
            case pressure
            case humidity
            case dewPoint = "dew_point"
            case uvi
            case clouds
            case visibility
            case windSpeed = "wind_speed"
            case windDeg = "wind_deg"
            case windGust = "wind_gust"
            case weather
        }
    }
    
    struct Minutely: Codable {
        let dt: Date
        let precipitation: Int
    }
    
    struct Hourly: Codable {
        struct Weather: Codable {
            let id: Int
            let main: String
            let description: String
            let icon: String
        }
        
        struct Rain: Codable {
            let _1h: Double
            
            private enum CodingKeys: String, CodingKey {
                case _1h = "1h"
            }
        }
        
        let dt: Date
        let temp: Double
        let feelsLike: Double
        let pressure: Int
        let humidity: Int
        let dewPoint: Double
        let uvi: Double
        let clouds: Int
        let visibility: Int
        let windSpeed: Double
        let windDeg: Int
        let windGust: Double
        let weather: [Weather]
        let pop: Double
        let rain: Rain?
        
        private enum CodingKeys: String, CodingKey {
            case dt
            case temp
            case feelsLike = "feels_like"
            case pressure
            case humidity
            case dewPoint = "dew_point"
            case uvi
            case clouds
            case visibility
            case windSpeed = "wind_speed"
            case windDeg = "wind_deg"
            case windGust = "wind_gust"
            case weather
            case pop
            case rain
        }
    }
    
    struct Daily: Codable {
        struct Temp: Codable {
            let day: Double
            let min: Double
            let max: Double
            let night: Double
            let eve: Double
            let morn: Double
        }
        
        struct FeelsLike: Codable {
            let day: Double
            let night: Double
            let eve: Double
            let morn: Double
        }
        
        struct Weather: Codable {
            let id: Int
            let main: String
            let description: String
            let icon: String
        }
        
        let dt: Date
        let sunrise: Date
        let sunset: Date
        let moonrise: Date
        let moonset: Date
        let moonPhase: Double
        let summary: String
        let temp: Temp
        let feelsLike: FeelsLike
        let pressure: Int
        let humidity: Int
        let dewPoint: Double
        let windSpeed: Double
        let windDeg: Int
        let windGust: Double
        let weather: [Weather]
        let clouds: Int
        let pop: Double
        let rain: Double?
        let uvi: Double
        
        private enum CodingKeys: String, CodingKey {
            case dt
            case sunrise
            case sunset
            case moonrise
            case moonset
            case moonPhase = "moon_phase"
            case summary
            case temp
            case feelsLike = "feels_like"
            case pressure
            case humidity
            case dewPoint = "dew_point"
            case windSpeed = "wind_speed"
            case windDeg = "wind_deg"
            case windGust = "wind_gust"
            case weather
            case clouds
            case pop
            case rain
            case uvi
        }
    }
    
    struct Alert: Codable {
        let senderName: String
        let event: String
        let start: Date
        let end: Date
        let description: String
        let tags: [String]
        
        private enum CodingKeys: String, CodingKey {
            case senderName = "sender_name"
            case event
            case start
            case end
            case description
            case tags
        }
    }
    
    let lat: Double
    let lon: Double
    let timezone: String
    let timezoneOffset: Int
    let current: Current
    let hourly: [Hourly]
    let daily: [Daily]
    let alerts: [Alert]
    
    private enum CodingKeys: String, CodingKey {
        case lat
        case lon
        case timezone
        case timezoneOffset = "timezone_offset"
        case current
        case hourly
        case daily
        case alerts
    }
}
