//
//  WeatherData.swift
//  Clima
//
//  Created by Toby Liu on 12/9/24.
//  Copyright © 2024 App Brewery. All rights reserved.
//

struct WeatherData: Decodable {
    
    let name: String
    
    let main: Main
    
    let weather : [WeatherItem]
    
}

struct Main: Decodable {
    let temp: Double
}


struct WeatherItem: Decodable {
    let id: Int
    let description: String
}
