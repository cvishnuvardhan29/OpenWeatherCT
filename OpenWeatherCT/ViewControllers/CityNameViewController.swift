//
//  CityNameViewController.swift
//  OpenWeatherCT
//
//  Created by Mr.Ved on 3/31/21.
//

import UIKit

class CityNameViewController: UIViewController {
    
    @IBOutlet weak var cityNameTextField: UITextField!
    
    var viewModel: CityNameViewConfigurable = CityNameViewModel()
    
    var forecastDetails: [Forecast] = []
        
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = viewModel.screenTitle
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        cityNameTextField.text = nil
        cityNameTextField.becomeFirstResponder()
    }
    
    @IBAction func didTapOnLookupButton(_ sender: UIButton) {
        guard let cityName = cityNameTextField.text, !cityName.isEmpty else {
            showAlert(with: "Oops!", and: "Please enter a city name")
            return
        }
        
        performSegue(withIdentifier: "ShowForecast", sender: cityName)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowForecast" {
            let forecastDetailsViewController = segue.destination as! ForecastDetailsTableViewController
            let forecastViewModel = ForecastDetailsTableViewModel(with: sender as! String)
            forecastDetailsViewController.viewModel = forecastViewModel
        }
    }
}

