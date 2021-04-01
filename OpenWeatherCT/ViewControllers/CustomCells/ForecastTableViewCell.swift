//
//  ForecastTableViewCell.swift
//  OpenWeatherCT
//
//  Created by Mr.Ved on 4/1/21.
//

import UIKit

class ForecastTableViewCell: UITableViewCell {

    @IBOutlet weak var conditionLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    
    var cellViewModel: ForecastTableViewCellViewConfigurable! {
        didSet {
            configureCell()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCell() {
        conditionLabel.text = cellViewModel.condition
        temperatureLabel.text = cellViewModel.temperature
    }

}
