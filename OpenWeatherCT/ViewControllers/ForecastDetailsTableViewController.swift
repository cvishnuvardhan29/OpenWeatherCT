//
//  WeatherTableViewController.swift
//  OpenWeatherCT
//
//  Created by Mr.Ved on 3/31/21.
//

import UIKit

class ForecastDetailsTableViewController: UITableViewController {
    
    var viewModel: ForecastDetailsTableViewConfigurable? {
        didSet {
            viewModel?.delegate = self
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = viewModel?.screenTitle
        configureTableView()
        
        viewModel?.getForecastDetails()
    }
    
    private func configureTableView() {
        tableView.tableFooterView = UIView(frame: .zero)
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel?.numberOfRows() ?? 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ForecastCell", for: indexPath) as? ForecastTableViewCell else {
            return UITableViewCell()
        }

        if let forecastInformation = viewModel?.getForecast(for: indexPath.row) {
            cell.cellViewModel = ForecastTableViewCellViewModel(with: forecastInformation)
        }
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let forecastInformation = viewModel?.getForecast(for: indexPath.row) {
            performSegue(withIdentifier: "ShowWeather", sender: forecastInformation)
        }
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowWeather" {
            let weatherViewController = segue.destination as! WeatherViewController
            let weatherViewModel = WeatherViewModel(with: sender as! Forecast)
            weatherViewController.viewModel = weatherViewModel
        }
    }

}
extension ForecastDetailsTableViewController: ForecastDetailsViewDelegate {
    func reloadData() {
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
}
