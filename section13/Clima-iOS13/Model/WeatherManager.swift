import Foundation

struct WeatherManager {
    let url = "https://api.openweathermap.org/data/2.5/weather?appid=43696914022f8b527652ec2306be3e83"
    
    func fetchWeather(cityName: String){
        
        let weatherUrl = "\(url)&q=\(cityName)"
        
        print (weatherUrl)
    }
}
