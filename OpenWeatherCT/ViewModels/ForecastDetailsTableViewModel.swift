//
//  ForecastDetailsTableViewModel.swift
//  OpenWeatherCT
//
//  Created by Mr.Ved on 4/1/21.
//

import Foundation

class ForecastDetailsTableViewModel: ForecastDetailsTableViewConfigurable {
    var screenTitle: String {
        return "Forecast Details"
    }
    
    private var forecast: [Forecast] = []
    var city: String
    var delegate: ForecastDetailsViewDelegate?
    
    init(with city: String) {
        self.city = city
    }
    
    func getForecastDetails() {
        NetworkManager.sharedInstance.getForecast(for: self.city, completion: { result in
            switch result {
            case .success(let forecastDetails):
                self.forecast = forecastDetails
                self.delegate?.reloadData()
            case .failure(let error):
                print("\(error)")
            }
        })
        
    }
    
    func numberOfRows() -> Int {
        return forecast.count
    }
    
    func getForecast(for row: Int) -> Forecast {
        return forecast[row]
    }
}
