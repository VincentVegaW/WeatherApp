//
//  DetailVC.swift
//  WetherAppCode
//
//  Created by katik 
//

import UIKit
import SwiftSVG

// MARK: Labels


class DetailVC: UIViewController {

    @IBOutlet var nameCityLabel: UILabel!
    @IBOutlet var viewCity: UIView!
    @IBOutlet var conditionLabel: UILabel!
    @IBOutlet var tempCity: UILabel!
    @IBOutlet var pressureLabel: UILabel!
    @IBOutlet var windSpeedLabel: UILabel!
    @IBOutlet var minTempLabel: UILabel!
    @IBOutlet var maxTempLabel: UILabel!
    
    
    var weathetModel:Weather?
        
    override func viewDidLoad() {
        super.viewDidLoad()
        refreshLabels()

    }
    
    // MARK: For ImageWiew

    func refreshLabels(){
        let url = URL(string: "https://yastatic.net/weather/i/icons/blueye/color/svg/\(weathetModel!.conditionCode).svg")
        let weatherImage = UIView(SVGURL: url!){(image) in
            image.resizeToFit(self.viewCity.bounds)
        }
        self.viewCity.addSubview(weatherImage)
        
        nameCityLabel.text = weathetModel?.name
        conditionLabel.text = weathetModel?.conditionString
        tempCity.text = weathetModel?.temperatureString
        pressureLabel.text = "\((weathetModel?.presureMm)!)"
        windSpeedLabel.text = "\((weathetModel?.windSpeed)!)"
        minTempLabel.text = "\((weathetModel?.tempMin)!)"
        maxTempLabel.text = "\((weathetModel?.tempMax)!)"
        
    }
}
