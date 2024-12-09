import Foundation

struct WeatherModel {
    
    let conditionId: Int
    let cityName: String
    let temperature: Double
    
    var temperatureString: String {
        return String(format: "%.1f", temperature)
    }
    
    var conditionName: String {
        switch conditionId {
        case 200...232:
            return "cloud.bolt.rain"
        case 300...321:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.heavyrain"
        case 600...622:
            return "snowflake"
        case 700...781:
            return "tornado"
        case 800:
            return "sun.min"
        case 801...804:
            return "cloud"
        default:
            return "exclamationmark.triangle.fill"
        }
    }
}
