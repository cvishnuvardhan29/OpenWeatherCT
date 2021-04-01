//
//  ForecastDetailsTableViewConfigurable.swift
//  OpenWeatherCT
//
//  Created by Mr.Ved on 4/1/21.
//

import Foundation

protocol ForecastDetailsViewDelegate {
    func reloadData()
}

protocol ForecastDetailsTableViewConfigurable {
    var screenTitle: String { get }
    var city: String { get }
    var delegate: ForecastDetailsViewDelegate? { get set }
    
    func getForecastDetails()
    func numberOfRows() -> Int
    func getForecast(for row: Int) -> Forecast
}
