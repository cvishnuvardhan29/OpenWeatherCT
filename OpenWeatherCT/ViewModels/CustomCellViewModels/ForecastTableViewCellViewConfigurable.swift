//
//  ForecastTableViewCellViewConfigurable.swift
//  OpenWeatherCT
//
//  Created by Mr.Ved on 4/1/21.
//

import Foundation

protocol ForecastTableViewCellViewConfigurable {
    var forecast: Forecast { get }
    
    var condition: String { get }
    var temperature: String { get }
}
