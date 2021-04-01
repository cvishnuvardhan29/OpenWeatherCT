//
//  WeatherViewModel.swift
//  OpenWeatherCT
//
//  Created by Mr.Ved on 4/1/21.
//

import Foundation

class WeatherViewModel: WeatherViewConfigurable {
    var screenTitle: String {
        return "Weather"
    }
    
    var wind: String {
        return "\(forecast.wind.speed) mph"
    }
    
    var feelsLikeTemp: String {
        return "\(forecast.main.feels_like)"
    }
    
    var humidity: String {
        return "\(forecast.main.humidity)"
    }
    
    var visibility: String {
        return "\(forecast.visibility)"
    }
    
    var temperature: String {
        return "\(forecast.main.temp)"
    }
    
    var condition: String {
        return "\(forecast.weather.first?.description.capitalized ?? "")"
    }
    
    var highLowTemperature: String {
        return "H:\(forecast.main.temp_max)  L:\(forecast.main.temp_min)"
    }
    
    private var forecast: Forecast
    
    init(with forecast: Forecast) {
        self.forecast = forecast
    }
}
