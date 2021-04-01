//
//  WeatherViewConfigurable.swift
//  OpenWeatherCT
//
//  Created by Mr.Ved on 4/1/21.
//

import Foundation

protocol WeatherViewConfigurable {
    var screenTitle: String { get }
    var wind: String { get }
    var feelsLikeTemp: String { get }
    var humidity: String { get }
    var visibility: String { get }
    var temperature: String { get }
    var condition: String { get }
    var highLowTemperature: String { get }
}
