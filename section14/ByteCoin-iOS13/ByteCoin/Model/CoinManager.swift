//
//  CoinManager.swift
//  ByteCoin
//
//  Created by Angela Yu on 11/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

let apiKey = Bundle.main.object(forInfoDictionaryKey: "Coin_api_key") ?? "bad"

struct CoinManager {
    
    let baseURL = "https://rest.coinapi.io/v1/exchangerate/BTC"
    
    let currencyArray = ["AUD", "BRL","CAD","CNY","EUR","GBP","HKD","IDR","ILS","INR","JPY","MXN","NOK","NZD","PLN","RON","RUB","SEK","SGD","USD","ZAR"]

    func getCoinPrice(for currency: String) -> Int{
        performRequest(with: baseURL + "/\(currency)?apiKey=\(apiKey)")
        return 100
    }
    
    func performRequest(with urlString: String) {
        // 1. create a url
        if let url = URL(string: urlString) {
            // 2. create a url session
            let session = URLSession(configuration: .default)
            
            // 3. give a task
            let task = session.dataTask(with: url) { (data,response,error) in
                if error != nil {
                    // delegate?.didFailWithError(error: error!)
                    return
                }
                
                if let safeData = data {
                    if let exchange = self.parseJSON(safeData) {
                        // delegate?.didUpdateWeather(self, weather: weather)
                    }
                }
            }
            
            // 4. start the task
            task.resume()
        }
    }
    
    func parseJSON(_ exchangeData: Data) -> ExchangeData? {
     
        let decoder = JSONDecoder()
        
        do {
            let decodedData = try decoder.decode(ExchangeData.self, from: exchangeData)
            
            print(decodedData.asset_id_base + " to " + decodedData.asset_id_quote + " is: " + String(decodedData.rate))
            
            return decodedData
        } catch {
            // delegate?.didFailWithError(error: error)
            return nil
        }
        
    }

    
}
