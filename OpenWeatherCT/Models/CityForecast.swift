//
//  CityForecast.swift
//  OpenWeatherCT
//
//  Created by Mr.Ved on 3/31/21.
//

import Foundation

struct CityForecast: Decodable {
    var list: [Forecast]
}

struct Forecast: Decodable {
    var main: Main
    var weather: [Weather]
    var dt_txt: String
    var wind: Wind
    var visibility: Int
}

struct Main: Decodable {
    var temp: Double
    var humidity: Double
    var temp_min: Double
    var temp_max: Double
    var feels_like: Double
}

struct Weather: Decodable {
    var main: String
    var description: String
}

struct Wind: Decodable {
    var speed: Double
}
