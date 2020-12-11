//
//  ListCell.swift
//  WetherAppCode
//
//  Created by katik 
//

import UIKit

// MARK: Cell first


class ListCell: UITableViewCell {
    
    
    @IBOutlet var nameCityLabel: UILabel!
    @IBOutlet var tempCityLabel: UILabel!
    @IBOutlet var conditionCityLabel: UILabel!
    
    

   func configure(weather: Weather){
       self.nameCityLabel.text = weather.name
       self.conditionCityLabel.text = weather.conditionString
       self.tempCityLabel.text = weather.temperatureString
    
   }
}
