//
//  WeatherViewController.swift
//  OpenWeatherCT
//
//  Created by Mr.Ved on 4/1/21.
//

import UIKit

class WeatherViewController: UIViewController {

    @IBOutlet weak var conditionalLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var highLowTemperatureLabel: UILabel!
    @IBOutlet weak var windLabel: UILabel!
    @IBOutlet weak var humidityLabel: UILabel!
    @IBOutlet weak var feelsLikeLabel: UILabel!
    @IBOutlet weak var visibilityLabel: UILabel!
    @IBOutlet weak var windHumidityView: UIView!
    @IBOutlet weak var feelsLikeVisibilityView: UIView!
    
    var viewModel: WeatherViewConfigurable?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = viewModel?.screenTitle
        configureData()
    }
    
    func configureData() {
        conditionalLabel.text = viewModel?.condition
        temperatureLabel.text = viewModel?.temperature
        highLowTemperatureLabel.text = viewModel?.highLowTemperature
        windLabel.text = viewModel?.wind
        humidityLabel.text = viewModel?.humidity
        feelsLikeLabel.text = viewModel?.feelsLikeTemp
        visibilityLabel.text = viewModel?.visibility
        
        windHumidityView.addBottomBorder()
        feelsLikeVisibilityView.addBottomBorder()
    }
}
