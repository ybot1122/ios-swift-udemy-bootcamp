import Foundation
import UIKit
import CoreLocation

let appID = Bundle.main.object(forInfoDictionaryKey: "WEATHER_MAP_APP_ID") ?? "bad"
let url = "https://api.openweathermap.org/data/2.5/weather?appid=\(appID)"

struct WeatherManager {
    
    var delegate: WeatherManagerDelegate?
    
    func fetchWeather(latitude: CLLocationDegrees, longitude: CLLocationDegrees){
        
        let weatherUrl = "\(url)&lat=\(latitude)&lon=\(longitude)"
        
        performRequest(with: weatherUrl)
    }


    func fetchWeather(cityName: String){
        
        let weatherUrl = "\(url)&q=\(cityName)"
        
        performRequest(with: weatherUrl)
    }
    
    func performRequest(with urlString: String) {
        // 1. create a url
        if let url = URL(string: urlString) {
            // 2. create a url session
            let session = URLSession(configuration: .default)
            
            // 3. give a task
            let task = session.dataTask(with: url) { (data,response,error) in
                if error != nil {
                    delegate?.didFailWithError(error: error!)
                    return
                }
                
                if let safeData = data {
                    if let weather = self.parseJSON(safeData) {
                        delegate?.didUpdateWeather(self, weather: weather)
                    }
                }
            }
            
            // 4. start the task
            task.resume()
        }
    }
    
    func parseJSON(_ weatherData: Data) -> WeatherModel? {
     
        let decoder = JSONDecoder()
        
        do {
            let decodedData = try decoder.decode(WeatherData.self, from: weatherData)
            let weather = WeatherModel(conditionId: decodedData.weather[0].id, cityName: decodedData.name, temperature: decodedData.main.temp)
            
            print(weather.conditionName)
            print(weather.temperatureString)
            return weather
        } catch {
            delegate?.didFailWithError(error: error)
            return nil
        }
        
    }
        
}

protocol WeatherManagerDelegate {
    func didUpdateWeather(_ weatherManager: WeatherManager, weather: WeatherModel) -> Void
    
    func didFailWithError(error: Error)
}
