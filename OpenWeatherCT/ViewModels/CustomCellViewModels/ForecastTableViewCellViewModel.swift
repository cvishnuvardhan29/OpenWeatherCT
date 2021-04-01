//
//  ForecastTableViewCellViewModel.swift
//  OpenWeatherCT
//
//  Created by Mr.Ved on 4/1/21.
//

import Foundation

class ForecastTableViewCellViewModel: ForecastTableViewCellViewConfigurable {
    var forecast: Forecast
    var condition: String {
        return forecast.weather.first?.main.capitalized ?? ""
    }
    var temperature: String {
        return "\(forecast.main.temp)"
    }
    
    init(with forecast: Forecast) {
        self.forecast = forecast
    }
}
