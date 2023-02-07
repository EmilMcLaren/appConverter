//
//  ViewController.swift
//  appTConverter
//
//  Created by Emil on 05.08.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var celcius: UILabel!
    @IBOutlet weak var fahren: UILabel!
    @IBOutlet weak var sliderLabel: UISlider! {
        didSet {
            sliderLabel.minimumValue = 0
            sliderLabel.maximumValue = 100
            sliderLabel.value = 0
        }
    }
    
    
    @IBAction func changeLabel(_ sender: UISlider) {
        let changeValue = Int(sender.value)
        celcius.text = "\(changeValue)ºC"
        let fahrenValue = Int((sender.value * 9 / 5) + 32)
        fahren.text = "\(fahrenValue)ºF"
    }
}
    
