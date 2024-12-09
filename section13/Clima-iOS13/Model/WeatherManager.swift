import Foundation

let appID = Bundle.main.object(forInfoDictionaryKey: "WEATHER_MAP_APP_ID") ?? "bad"

struct WeatherManager {
    let url = "https://api.openweathermap.org/data/2.5/weather?appid=\(appID)"
    
    func fetchWeather(cityName: String){
        
        let weatherUrl = "\(url)&q=\(cityName)"
                
        performRequest(urlString: weatherUrl)
        
        print(appID)
    }
    
    func performRequest(urlString: String) {
        
        // 1. create a url
        if let url = URL(string: urlString) {
            // 2. create a url session
            let session = URLSession(configuration: .default)
            
            // 3. give a task
            let task = session.dataTask(with: url, completionHandler: handle(data:response:error:))
            
            // 4. start the task
            task.resume()
        }
    }
    
    func handle(data: Data?, response: URLResponse?, error: Error?) -> Void {
        
        if error != nil {
            print(error!)
            return
        }
        
        if let safeData = data {
            let dataString = String(data: safeData, encoding: .utf8)
            print(dataString!)
        }
        
    }
}
