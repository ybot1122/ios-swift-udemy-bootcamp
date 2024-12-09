import Foundation
import UIKit

let appID = Bundle.main.object(forInfoDictionaryKey: "WEATHER_MAP_APP_ID") ?? "bad"
let url = "https://api.openweathermap.org/data/2.5/weather?appid=\(appID)"

struct WeatherManager {
    
    var delegate: WeatherManagerDelegate?
    
    func fetchWeather(cityName: String){
        
        let weatherUrl = "\(url)&q=\(cityName)"
        
        performRequest(urlString: weatherUrl)
    }
    
    func performRequest(urlString: String) {
        // 1. create a url
        if let url = URL(string: urlString) {
            // 2. create a url session
            let session = URLSession(configuration: .default)
            
            // 3. give a task
            let task = session.dataTask(with: url) { (data,response,error) in
                if error != nil {
                    print(error!)
                    return
                }
                
                if let safeData = data {
                    if let weather = self.parseJSON(weatherData: safeData) {
                        delegate?.didUpdateWeather(weather: weather)
                    }
                }
            }
            
            // 4. start the task
            task.resume()
        }
    }
    
    func parseJSON(weatherData: Data) -> WeatherModel? {
     
        let decoder = JSONDecoder()
        
        do {
            let decodedData = try decoder.decode(WeatherData.self, from: weatherData)
            let weather = WeatherModel(conditionId: decodedData.weather[0].id, cityName: decodedData.name, temperature: decodedData.main.temp)
            
            print(weather.conditionName)
            print(weather.temperatureString)
            return weather
        } catch {
            print(error)
            return nil
        }
        
    }
        
}

protocol WeatherManagerDelegate {
    func didUpdateWeather(weather: WeatherModel) -> Void
}
